import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/film.dart';

Future<List<Film>> fetchFilms() async {
  final String response = await rootBundle.loadString('films.json');
  List<dynamic> filmData = json.decode(response);
  return filmData.map((data) => Film.fromJson(data)).toList();
}
