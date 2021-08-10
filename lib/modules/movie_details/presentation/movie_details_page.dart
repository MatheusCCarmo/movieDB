import 'package:flutter/material.dart';
import 'package:moviedb/config/app_colors.dart';

import 'movie_details_layout.dart';
import 'movie_details_similar_list/movie_details_similar_list.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: Stack(
          children: [
            MovieDetailsLayout(),
            Positioned(
              left: 20,
              top: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.blackBackground.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.clamp,
                    colors: [
                      AppColors.blackBackground.withOpacity(0.5),
                      AppColors.blackBackground.withOpacity(0.4),
                      AppColors.blackBackground.withOpacity(0.3),
                      AppColors.blackBackground.withOpacity(0.2),
                      AppColors.blackBackground.withOpacity(0.15),
                      AppColors.blackBackground.withOpacity(0.1),
                      AppColors.blackBackground.withOpacity(0.05),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
