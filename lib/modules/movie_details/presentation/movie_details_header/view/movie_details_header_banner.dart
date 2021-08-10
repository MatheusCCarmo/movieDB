import 'package:flutter/material.dart';
import 'package:moviedb/config/app_colors.dart';
import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';

class MovieDetailsHeaderBanner extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeaderBanner({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 350,
      backgroundColor: AppColors.blackBackground,
      toolbarHeight: 0,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          'https://image.tmdb.org/t/p/original/${movie.posterPath}',
          fit: BoxFit.cover,
        ),
        stretchModes: [StretchMode.zoomBackground],
        titlePadding: EdgeInsets.zero,
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
