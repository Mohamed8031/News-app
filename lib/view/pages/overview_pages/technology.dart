import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controller/api_service.dart';
import '../../../model/article_model.dart';
import '../inner_card.dart';
import '../loading.dart';
import '../outer_card_builder.dart';

class TechnologyScreen extends StatefulWidget {
  const TechnologyScreen({Key? key}) : super(key: key);

  @override
  State<TechnologyScreen> createState() => _TechnologyScreenState();
}

class _TechnologyScreenState extends State<TechnologyScreen> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: client.getApi("technology"),
        builder: (BuildContext context, AsyncSnapshot<List<Articles>> snapshot) {
          client.getApi("technology");
          if (snapshot.hasData) {
            List<Articles>? myArticle = snapshot.data;
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: myArticle?.length,
              itemBuilder: (context, index) {
                return  GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return Scaffold(
                          body: innerCard(
                            "${myArticle?[index].urlToImage}",
                            "${myArticle?[index].title}",
                            "${myArticle?[index].source!.name}",
                            "${myArticle?[index].publishedAt}",
                            "${myArticle?[index].content}",
                          ),
                        );
                      },
                    ),
                  ),
                  child: outerCardBuilder(
                    "${myArticle?[index].urlToImage}",
                    "${myArticle?[index].title}",
                    "${myArticle?[index].source!.name}",
                    "${myArticle?[index].publishedAt}",
                    "${myArticle?[index].content}",
                  ),
                );
              },
            );
          }
          return defaultLoading();
        },
      ),
    );
  }
}
