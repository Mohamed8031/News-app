import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/article_model.dart';
import 'inner_card.dart';
import 'loading.dart';
import 'outer_card_builder.dart';

List<String> category = [
  "general",
  "business",
  "entertainment",
  "health",
  "science",
  "sports",
  "technology",
];
List<String> country = [
  "eg",
  "us",
];

Widget futureBuilder({
  index,
  client,
}) {
  return FutureBuilder(
    future: client,
    builder: (BuildContext context, AsyncSnapshot<List<Articles>> snapshot) {
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
      return defaultLoading();
    },
  );
}
