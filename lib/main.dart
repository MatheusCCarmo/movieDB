import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/app_module.dart';

import 'app.dart';

void main() async {
  await DotEnv().load(fileName: ".env");
  runApp(
    ModularApp(
      module: AppModule(),
      child: App(),
    ),
  );
}
