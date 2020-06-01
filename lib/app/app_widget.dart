import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:themes/app/app_controller.dart';
import 'package:themes/app/themes/dark_theme.dart';
import 'package:themes/app/themes/light_theme.dart';

class AppWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: Modular.navigatorKey,
          title: 'Flutter Slidy',
          theme: Modular.get<AppController>().getDarkStatus ? AppThemeDark().getTheme() : AppThemeLight().getTheme(),
          darkTheme: ThemeData.dark(),
          //themeMode: Modular.get<AppController>().darkStatus ? ThemeMode.dark : ThemeMode.light,
          initialRoute: '/',
          onGenerateRoute: Modular.generateRoute,
        );
      },
    );
  }
}
