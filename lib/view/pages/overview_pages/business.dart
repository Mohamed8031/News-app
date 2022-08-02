import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/view/reusable_components/outer_card_builder.dart';

import '../../../controller/api_service.dart';
import '../../../model/article_model.dart';
import '../../reusable_components/futuure_builder.dart';
import '../../reusable_components/inner_card.dart';
import '../../reusable_components/loading.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  ApiService client = ApiService();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: futureBuilder(
        client: client.getApi("business", "us"),
      ),
    );
  }
}
