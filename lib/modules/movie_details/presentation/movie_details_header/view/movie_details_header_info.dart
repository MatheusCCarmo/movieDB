import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/config/app_colors.dart';
import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_header/controllers/movie_controller.dart';

class MovieDetailsHeaderInfo extends StatefulWidget {
  final Movie movie;
  const MovieDetailsHeaderInfo({Key? key, required this.movie})
      : super(key: key);

  @override
  _MovieDetailsHeaderInfoState createState() => _MovieDetailsHeaderInfoState();
}

class _MovieDetailsHeaderInfoState extends State<MovieDetailsHeaderInfo> {
  final controller = Modular.get<MovieController>();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(16),
        color: AppColors.blackBackground,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Text(
                    widget.movie.originalTitle,
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                ),
                Observer(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      controller.toggleIsFavorite();
                    },
                    child: Icon(controller.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_outline),
                  );
                }),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${controller.formatValue(widget.movie.voteCount)} Likes',
                  style: TextStyle(
                    color: AppColors.lightGray,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.circle_outlined,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${widget.movie.popularity} View',
                  style: TextStyle(
                    color: AppColors.lightGray,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
