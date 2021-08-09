import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'config/app_colors.dart';
import 'modules/movie_details/presentation/movie_details_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          subtitle1: TextStyle(color: AppColors.white),
          caption: TextStyle(color: AppColors.white),
        ),
        iconTheme: IconThemeData(
          color: AppColors.white,
        ),
      ),
      home: MovieDetailsPage(),
    ).modular();
  }
}
