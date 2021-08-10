import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/config/app_colors.dart';
import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';

import 'controllers/similar_movies_list_controller.dart';

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
    return Column(
      children: [
        ListTile(
          tileColor: AppColors.blackBackground,
          leading: Image.network(
            'https://image.tmdb.org/t/p/w500/${widget.similarMovie.posterPath}',
          ),
          title: Text(widget.similarMovie.originalTitle),
          subtitle: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '${widget.similarMovie.releaseDate.substring(0, 4)}'),
              TextSpan(
                  text:
                      ' ${controller.genresToText(widget.similarMovie.genreIds)}',
                  style: TextStyle(color: AppColors.lightGray)),
            ]),
          ),
          trailing: Container(
            width: 8,
            alignment: Alignment.topRight,
            child: Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
        Divider(
          height: 0.1,
          color: AppColors.blackDivider,
        ),
      ],
    );
  }
}
