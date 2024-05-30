import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/film_provider.dart';
import 'film_details.dart';

class FilmListPage extends StatefulWidget {
  const FilmListPage({Key? key}) : super(key: key);

  @override
  FilmListPageState createState() => FilmListPageState();
}

class FilmListPageState extends State<FilmListPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<FilmProvider>(context, listen: false).loadFilms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Film List'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const NetworkImage('data:image/jpeg;base64,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'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Consumer<FilmProvider>(
          builder: (context, filmProvider, child) {
            if (filmProvider.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (filmProvider.films.isEmpty) {
              return const Center(child: Text('Film can t find'));
            } else {
              return ListView.builder(
                itemCount: filmProvider.films.length,
                itemBuilder: (context, index) {
                  final film = filmProvider.films[index];
                  return ListTile(
                    tileColor: Colors.transparent,
                    leading: Hero(
                      tag: film.title,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(film.imageUrl),
                        child: Text(film.title[0]),
                      ),
                    ),
                    title: Text(
                      film.title,
                      style: const TextStyle(
                        color: Colors.white, // Metin rengini beyaz olarak ayarla
                      ),
                    ),
                    subtitle: Text(
                      '${film.year} - ${film.genre}',
                      style: const TextStyle(
                        color: Colors.white, // Metin rengini beyaz olarak ayarla
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FilmDetailsPage(film: film),
                        ),
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
