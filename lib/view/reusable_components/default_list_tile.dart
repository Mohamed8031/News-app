import 'package:flutter/material.dart';

import '../pages/inner_card.dart';

Widget defaultListTile(
  article,
) {
  return ListView.builder(
    physics: const BouncingScrollPhysics(),
    itemCount: article?.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => InnerCard(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.grey[200],
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.network(
                        "${article?[index].urlToImage}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "${article?[index].source!.name}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    "${article?[index].title}",
                    style: TextStyle(
                        fontSize: 19, fontWeight: FontWeight.w900,color: Colors.blue[900]),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    "${article?[index].description}",
                    style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(.7)),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
