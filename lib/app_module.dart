import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_movie.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_similar_movies.dart';
import 'package:moviedb/modules/movie_details/infra/repositories/movie_repository_impl.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_page.dart';

import 'modules/movie_details/external/datasources/tmdb_movie_datasource.dart';
import 'modules/movie_details/external/datasources/tmdb_similiar_movies_datarsource.dart';
import 'modules/movie_details/infra/repositories/similar_movies_repository_impl.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => GetMovie(i())),
        Bind((i) => GetSimilarMovies(i())),
        Bind((i) => MovieRepositoryImpl(i())),
        Bind((i) => SimilarMoviesRepositoryImpl(i())),
        Bind((i) => TmdbMovieDatasource(i())),
        Bind((i) => TmdbSimilarMoviesDatasource(i())),
        Bind((i) => Dio()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => MovieDetailsPage()),
      ];
}
