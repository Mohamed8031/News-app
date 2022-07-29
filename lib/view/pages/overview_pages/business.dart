import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controller/api_service.dart';
import '../../../model/article_model.dart';
import '../../reusable_components/default_list_tile.dart';
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
        future: client.getApi(client.category),
        builder:
            (BuildContext context, AsyncSnapshot<List<Articles>> snapshot) {
          client.category = "business";
          if (snapshot.hasData) {
            List<Articles>? myArticle = snapshot.data;
            return defaultListTile(
              myArticle,
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
