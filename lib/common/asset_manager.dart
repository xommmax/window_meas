import 'dart:convert';

import 'package:flutter/services.dart';

class AssetManager {
  static List<String>? _glassUnits;
  static List<String>? _profileSystems;

  static Future<List<String>> getGlassUnits() async {
    _glassUnits ??= await _loadGlassUnits();
    return _glassUnits!;
  }

  static Future<List<String>> _loadGlassUnits() async {
    final String response = await rootBundle.loadString('assets/json/glass_units.json');
    final data = await json.decode(response) as Map;
    final articles = (data['articles'] as List).cast<String>();

    return articles;
  }

  static Future<List<String>> getProfileSystems() async {
    _profileSystems ??= await _loadProfileSystems();
    return _profileSystems!;
  }

  static Future<List<String>> _loadProfileSystems() async {
    final String response = await rootBundle.loadString('assets/json/profile_systems.json');
    final data = await json.decode(response) as Map;
    final articles = (data['articles'] as List).cast<String>();

    return articles;
  }
}
