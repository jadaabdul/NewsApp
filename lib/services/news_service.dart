import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/news_model.dart';

class NewsService {
  final String baseUrl = "https://inshortsapi.vercel.app/news?category=";

  Future<List<NewsArticle>> fetchNews(String category) async {
    final response = await http.get(Uri.parse('$baseUrl$category'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['data'];
      return data.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
