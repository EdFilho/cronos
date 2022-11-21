import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../presentation/shared/app_theme.dart';
import 'app_controller.dart';
import 'app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appController = Get.put(AppController(), permanent: true);
    return GestureDetector(
      onTap: () => appController.setCurrentFocus(context),
      child: ScreenUtilInit(
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Cronos',
            theme: AppTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            defaultTransition: Transition.leftToRightWithFade,
            initialRoute: Routes.initial,
            getPages: AppRoutes.routes,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: const Locale('pt', 'BR'),
            supportedLocales: const [Locale('pt', 'BR')],
          );
        },
      ),
    );
  }
}
