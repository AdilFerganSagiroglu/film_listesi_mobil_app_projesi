import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/film_provider.dart';
import 'screens/film_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FilmProvider()),
      ],
      child: MaterialApp(
        title: 'Film List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FilmListPage(),
      ),
    );
  }
}
