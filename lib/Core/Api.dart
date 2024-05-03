import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/News_model.dart';

Future<NewsModel> fetchNews() async {
  final response = await http.get(
      Uri.parse('https://newsapi.org/v2/everything?q=technology&apiKey=687d0a3b364a402594f064c098af0fee'));
  if (response.statusCode == 200) {
    return NewsModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load news');
  }
}
