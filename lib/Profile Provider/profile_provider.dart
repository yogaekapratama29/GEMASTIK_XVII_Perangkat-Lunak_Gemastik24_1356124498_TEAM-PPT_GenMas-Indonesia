
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileProvider with ChangeNotifier {
  String _imagePath = '';

  String get imagePath => _imagePath;

  ProfileProvider() {
    _loadImagePath();
  }

  Future<void> _loadImagePath() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _imagePath = prefs.getString('profile_image') ?? '';
    notifyListeners();
  }

  Future<void> setImagePath(String path) async {
    _imagePath = path;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('profile_image', path);
  }
}
