import 'dart:convert';

import 'package:flutter_news_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class NewsApi {

  static Future<List<ArticleModel>> getNews() async {
    List<ArticleModel>articles = List<ArticleModel>();
    String url =
        'http://newsapi.org/v2/top-headlines?country=eg&apiKey=16aaeee9f73a40cca54955a6a36eed1c';
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((e) {
        if (e['urlToImage'] != null && e['description'] != null) {
          ArticleModel article = ArticleModel(
            title: e['title'],
            author: e['author'],
            description: e['description'],
            imageUrl: e['urlToImage'],
            publishedAt: DateTime.parse(e['publishedAt']),
            content: e["content"],
            url: e["url"],
          );
          articles.add(article);
        }
      });
    }
    return articles;
  }

  static Future<List<ArticleModel>> getCategoryNews(String category) async {
    List<ArticleModel>articles = List<ArticleModel>();
    String url =
        'http://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=16aaeee9f73a40cca54955a6a36eed1c';
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((e) {
        if (e['urlToImage'] != null && e['description'] != null) {
          ArticleModel article = ArticleModel(
            title: e['title'],
            author: e['author'],
            description: e['description'],
            imageUrl: e['urlToImage'],
            publishedAt: DateTime.parse(e['publishedAt']),
            content: e["content"],
            url: e["url"],
          );
          articles.add(article);
        }
      });
    }
    return articles;
  }
}
