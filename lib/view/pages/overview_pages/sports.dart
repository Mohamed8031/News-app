import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controller/api_service.dart';
import '../../../model/article_model.dart';
import '../../reusable_components/futuure_builder.dart';
import '../../reusable_components/inner_card.dart';
import '../../reusable_components/loading.dart';
import '../../reusable_components/outer_card_builder.dart';

class SportsScreen extends StatefulWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: futureBuilder(
        client: client.getApi("sports", "us"),
      ),
    );
  }
}
