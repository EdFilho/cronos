import 'package:flare_flutter/flare_cache.dart';
import 'package:flutter/material.dart';

import 'main/app_controller.dart';
import 'main/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlareCache.doesPrune = false;
  AppController.production = false;
  runApp(
    const AppWidget(),
  );
}
