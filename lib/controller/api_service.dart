import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_app/model/article_model.dart';

class ApiService {
  Future<List<Articles>> getApi(category, country) async {
    Uri uri = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=a59c133684b84a28bb65839f7a428491");
    Response response = await http.get(uri);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      Iterable list = data["articles"];
      return list.map((article) => Articles.fromJson(article)).toList();
    } else {
      throw Exception("Failed to get Json data");
    }
  }
}
