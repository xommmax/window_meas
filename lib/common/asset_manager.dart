import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@singleton
class AssetManager {
  List<String>? _articles;

  Future<List<String>> getArticles() async {
    _articles ??= await _loadArticles();
    return _articles!;
  }

  Future<List<String>> _loadArticles() async {
    final String response = await rootBundle.loadString('assets/json/articles.json');
    final data = await json.decode(response) as Map;
    final articles = (data['articles'] as List).cast<String>();

    return articles;
  }
}
