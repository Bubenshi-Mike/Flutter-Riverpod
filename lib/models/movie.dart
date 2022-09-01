class Movie {
  final int id;
  final bool adult;
  final bool video;
  final String title;
  final String overview;
  final double popularity;
  final String backdropPath;
  final String originalTitle;
  final String originalLanguage;
  final int voteAverage;
  final String posterPath;
  final int voteCount;
  final String releaseDate;
  final List<int> genreIds;

  Movie({
    required this.id,
    required this.adult,
    required this.title,
    required this.video,
    required this.overview,
    required this.popularity,
    required this.backdropPath,
    required this.releaseDate,
    required this.posterPath,
    required this.originalTitle,
    required this.originalLanguage,
    required this.voteAverage,
    required this.voteCount,
    required this.genreIds,
  });

  factory Movie.fromJSON(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      adult: json["adult"],
      title: json["title"],
      video: json["video"],
      overview: json['overview'],
      popularity: json['popularity'],
      backdropPath: json['backdrop_path'],
      originalTitle: json['original_title'],
      originalLanguage: json['original_language'],
      releaseDate: json["release_date"],
      posterPath: json["poster_path"],
      voteAverage: json["vote_average"].toInt(),
      voteCount: json["vote_count"].toInt(),
      genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
    );
  }
}
