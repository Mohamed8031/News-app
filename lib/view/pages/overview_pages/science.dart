import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../controller/api_service.dart';
import '../../../model/article_model.dart';
import '../../reusable_components/futuure_builder.dart';
import '../../reusable_components/inner_card.dart';
import '../../reusable_components/loading.dart';
import '../../reusable_components/outer_card_builder.dart';

class ScienceScreen extends StatefulWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  State<ScienceScreen> createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: futureBuilder(
        client: client.getApi("science", "us"),
      ),
    );
  }
}
