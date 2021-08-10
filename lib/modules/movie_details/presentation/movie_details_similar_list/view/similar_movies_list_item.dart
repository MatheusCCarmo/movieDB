import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/config/app_colors.dart';
import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';

import '../controllers/similar_movies_list_controller.dart';

class SimilarMoviesListItem extends StatefulWidget {
  final SimilarMovie similarMovie;
  const SimilarMoviesListItem({Key? key, required this.similarMovie})
      : super(key: key);

  @override
  _SimilarMoviesListItemState createState() => _SimilarMoviesListItemState();
}

class _SimilarMoviesListItemState extends State<SimilarMoviesListItem> {
  final SimilarMoviesListController controller =
      Modular.get<SimilarMoviesListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.blackBackground,
        border: Border(
          bottom: BorderSide(color: AppColors.blackDivider, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500/${widget.similarMovie.posterPath}',
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.similarMovie.originalTitle,
                    style: TextStyle(color: AppColors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                              '${widget.similarMovie.releaseDate.substring(0, 4)} ',
                          style: TextStyle(
                            fontSize: 12,
                          )),
                      TextSpan(
                          text:
                              ' ${controller.genresToText(widget.similarMovie.genreIds)}',
                          style: TextStyle(
                              color: AppColors.lightGray, fontSize: 12)),
                    ]),
                  ),
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
