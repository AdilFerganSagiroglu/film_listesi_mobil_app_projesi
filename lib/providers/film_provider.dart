import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import '../models/film.dart';

class FilmProvider with ChangeNotifier {
  List<Film> _films = [];
  bool _isLoading = false;

  List<Film> get films => _films;
  bool get isLoading => _isLoading;

  Future<void> loadFilms() async {
    _isLoading = true;
    notifyListeners();

    try {
      final String response = await rootBundle.loadString('assets/films.json');
      final List<dynamic> data = json.decode(response);
      _films = data.map((filmData) => Film.fromJson(filmData)).toList();
    } catch (error) {
      print("Failed to load films: $error");
    }

    _isLoading = false;
    notifyListeners();
  }
}
