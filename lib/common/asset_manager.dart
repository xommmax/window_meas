import 'dart:convert';

import 'package:flutter/services.dart';

class AssetManager {
  static List<String>? _articles;

  static Future<List<String>> getArticles() async {
    _articles ??= await _loadArticles();
    return _articles!;
  }

  static Future<List<String>> _loadArticles() async {
    final String response = await rootBundle.loadString('assets/json/articles.json');
    final data = await json.decode(response) as Map;
    final articles = (data['articles'] as List).cast<String>();

    return articles;
  }
}
