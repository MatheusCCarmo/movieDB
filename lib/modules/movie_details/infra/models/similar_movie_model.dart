import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';

class SimilarMovieModel extends SimilarMovie {
  SimilarMovieModel({
    required id,
    required posterPath,
    required releaseDate,
    required genreIds,
    required originalTitle,
  }) : super(
          id: id,
          posterPath: posterPath,
          releaseDate: releaseDate,
          genreIds: genreIds,
          originalTitle: originalTitle,
        );

  static SimilarMovieModel fromJson(Map<String, dynamic> json) {
    return SimilarMovieModel(
        id: json['id'],
        posterPath: json['poster_path'],
        releaseDate: json['release_date'],
        genreIds: json['genre_ids'],
        originalTitle: json['original_title']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'poster_path': posterPath,
        'release_date': releaseDate,
        'genre_ids': genreIds,
        'original_title': originalTitle,
      };
}
