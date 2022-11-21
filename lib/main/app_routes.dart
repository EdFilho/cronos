import 'package:cronos/presentation/pages/home/home_bindings.dart';
import 'package:cronos/presentation/pages/home/home_page.dart';
import 'package:get/get.dart';

import 'app_bindings.dart';

abstract class Routes {
  static const initial = '/';
}

abstract class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => const HomePage(),
      transition: Transition.fade,
      bindings: [
        AppBindings(),
        HomeBindings(),
      ],
    ),
  ];
}
