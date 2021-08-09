import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel({
    required id,
    required posterPath,
    required originalTitle,
    required popularity,
    required voteCount,
  }) : super(
          id: id,
          posterPath: posterPath,
          originalTitle: originalTitle,
          popularity: popularity,
          voteCount: voteCount,
        );

  static MovieModel fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      posterPath: json['poster_path'],
      originalTitle: json['original_title'],
      popularity: json['popularity'],
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'poster_path': posterPath,
        'original_title': originalTitle,
        'popularity': popularity,
        'vote_count': voteCount,
      };

  String fomatValue(num value) {
    if (value > 1000000) {
      return ((value / 100000).floor() / 10).toStringAsFixed(1) + 'M';
    } else if (value > 1000) {
      return ((value / 100).floor() / 10).toStringAsFixed(1) + 'K';
    } else {
      return value.toString();
    }
  }
}
