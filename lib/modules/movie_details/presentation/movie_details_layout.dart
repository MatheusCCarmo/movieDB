import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/config/app_colors.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_header/controllers/movie_controller.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_similar_list/movie_details_similar_list.dart';
import 'package:moviedb/modules/utils/controller_status.dart';

import 'movie_details_header/view/movie_details_header_banner.dart';
import 'movie_details_header/view/movie_details_header_info.dart';

class MovieDetailsLayout extends StatefulWidget {
  const MovieDetailsLayout({Key? key}) : super(key: key);

  @override
  _MovieDetailsLayoutState createState() => _MovieDetailsLayoutState();
}

class _MovieDetailsLayoutState extends State<MovieDetailsLayout> {
  final controller = Modular.get<MovieController>();

  @override
  void initState() {
    controller.getMovieById(155);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
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
          final movie = controller.movie!;
          return Container(
            color: AppColors.blackBackground,
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                MovieDetailsHeaderBanner(movie: movie),
                MovieDetailsHeaderInfo(movie: movie),
                MovieDetailsSimilarList(),
              ],
            ),
          );
        } else {
          return Center(
            child: Text('Error'),
          );
        }
      },
    );
  }
}
