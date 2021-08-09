import 'package:flutter/material.dart';

import 'modules/movie_details/presentation/movie_details_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieDetailsPage(),
    );
  }
}
