import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:themes/app/interfaces/theme_app_interface.dart';

class AppThemeDark extends IThemeAppInterface{

  @override
  ThemeData getTheme() {
    // Implementar temas especializados.
    return ThemeData(
      brightness: Brightness.dark,

      primaryColorDark: Colors.red,

      // Cards
      cardTheme: CardTheme(
        color: Colors.black54
      ),

      // Buttons
      buttonColor: Colors.black,

      //App Bar
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 30
          )
        ),

        //Icons
        iconTheme: IconThemeData(
          color: Colors.red
        )
      )
    );
  }

}