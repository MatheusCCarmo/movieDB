import 'package:flutter/material.dart';
import 'package:moviedb/config/app_colors.dart';
import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';

class MovieDetailsHeaderBanner extends StatefulWidget {
  final Movie movie;
  const MovieDetailsHeaderBanner({Key? key, required this.movie})
      : super(key: key);

  @override
  _MovieDetailsHeaderBannerState createState() =>
      _MovieDetailsHeaderBannerState();
}

class _MovieDetailsHeaderBannerState extends State<MovieDetailsHeaderBanner> {
  double expandedHeight = 300;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      toolbarHeight: 0,
      stretchTriggerOffset: 20,
      stretch: true,
      onStretchTrigger: () async {
        setState(() {
          expandedHeight = 400;
        });
      },
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          'https://image.tmdb.org/t/p/original/${widget.movie.posterPath}',
          fit: BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
              colors: [
                AppColors.blackBackground,
                AppColors.blackBackground.withOpacity(0.8),
                AppColors.blackBackground.withOpacity(0.6),
                AppColors.blackBackground.withOpacity(0.4),
                AppColors.blackBackground.withOpacity(0.25),
                AppColors.blackBackground.withOpacity(0.1),
                Colors.transparent
              ],
            ),
          ),
        ),
      ),
    );
  }
}
