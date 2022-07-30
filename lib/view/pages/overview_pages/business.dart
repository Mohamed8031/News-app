import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/view/pages/outer_card_builder.dart';

import '../../../controller/api_service.dart';
import '../../../model/article_model.dart';
import '../inner_card.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: client.getApi("business"),
        builder:
            (BuildContext context, AsyncSnapshot<List<Articles>> snapshot) {
          if (snapshot.hasData) {
            List<Articles>? myArticle = snapshot.data;
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: myArticle?.length,
              itemBuilder: (context, index) {
                return GestureDetector(
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
          return const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: LinearProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
