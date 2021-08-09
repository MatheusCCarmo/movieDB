class SimilarMovie {
  final int id;
  final String posterPath;
  final String releaseDate;
  final List<dynamic> genreIds;
  final String originalTitle;

  SimilarMovie({
    required this.id,
    required this.posterPath,
    required this.releaseDate,
    required this.genreIds,
    required this.originalTitle,
  });
}
