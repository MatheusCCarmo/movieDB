import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_header/controllers/movie_controller.dart';
import 'package:moviedb/modules/utils/controller_status.dart';

import 'movie_details_header_banner.dart';
import 'movie_details_header_info.dart';

class MovieDetailsHeader extends StatefulWidget {
  const MovieDetailsHeader({Key? key}) : super(key: key);

  @override
  _MovieDetailsHeaderState createState() => _MovieDetailsHeaderState();
}

class _MovieDetailsHeaderState extends State<MovieDetailsHeader> {
  final controller = Modular.get<MovieController>();

  @override
  void initState() {
    controller.getMovieById(155);
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
              final movie = controller.movie!;
              return CustomScrollView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                slivers: [
                  MovieDetailsHeaderBanner(movie: movie),
                  MovieDetailsHeaderInfo(movie: movie),
                ],
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
