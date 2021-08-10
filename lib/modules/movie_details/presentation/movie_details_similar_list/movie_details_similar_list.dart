import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_similar_list/controllers/similar_movies_list_controller.dart';
import 'package:moviedb/modules/utils/controller_status.dart';

import 'similar_movies_list_item.dart';

class MovieDetailsSimilarList extends StatefulWidget {
  const MovieDetailsSimilarList({Key? key}) : super(key: key);

  @override
  _MovieDetailsSimilarListState createState() =>
      _MovieDetailsSimilarListState();
}

class _MovieDetailsSimilarListState extends State<MovieDetailsSimilarList> {
  final SimilarMoviesListController controller =
      Modular.get<SimilarMoviesListController>();

  @override
  void initState() {
    controller.getSimilarMoviesById(155);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Observer(
          builder: (context) {
            if (controller.status == ControllerStatus.start) {
              return Center(
                child: Text('Start'),
              );
            } else if (controller.status == ControllerStatus.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (controller.status == ControllerStatus.sucess) {
              final similarMovies = controller.similarMovies;
              return ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                itemCount: similarMovies.length,
                itemBuilder: (context, index) {
                  return SimilarMoviesListItem(
                      similarMovie: similarMovies[index]);
                },
              );
            } else {
              return Center(
                child: Text('Error'),
              );
            }
          },
        ),
      ),
    );
  }
}
