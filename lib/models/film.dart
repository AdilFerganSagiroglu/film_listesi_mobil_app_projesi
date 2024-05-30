class Film {
  final String title;
  final int year;
  final String genre;
  final String director;
  final String summary;
  final String imdbUrl;
  final String imageUrl;

  Film({
    required this.title,
    required this.year,
    required this.genre,
    required this.director,
    required this.summary,
    required this.imdbUrl,
    required this.imageUrl,
  });

  factory Film.fromJson(Map<String, dynamic> json) {
    return Film(
      title: json['title'],
      year: json['year'],
      genre: json['genre'],
      director: json['director'],
      summary: json['summary'],
      imdbUrl: json['imdbUrl'],
      imageUrl: json['imageUrl'],
    );
  }
}
