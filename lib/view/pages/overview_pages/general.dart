import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controller/api_service.dart';
import '../../../model/article_model.dart';
import '../../reusable_components/futuure_builder.dart';
import '../../reusable_components/inner_card.dart';
import '../../reusable_components/loading.dart';
import '../../reusable_components/outer_card_builder.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({Key? key}) : super(key: key);

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: futureBuilder(
        client: client.getApi("general", "us"),
      ),
    );
  }
}
