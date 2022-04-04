import 'dart:convert';

import 'package:bloc_sample/data/models/api_model.dart';
import 'package:http/http.dart' as http;

abstract class NewsRepository {
  Future<List<Articles>> getNews();
}

class NewsRepositoryImpl implements NewsRepository {
  @override
  Future<List<Articles>> getNews() async {
    var response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=ru&apiKey=491be5669c9a4f7fb5a1dce87e3df129'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Articles> articles = ApiResultModel.fromJson(data).articles!;
      return articles;
    } else {
      throw Exception();
    }
  }
}
