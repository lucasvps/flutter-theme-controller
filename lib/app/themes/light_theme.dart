import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:themes/app/interfaces/theme_app_interface.dart';

class AppThemeLight extends IThemeAppInterface{

  @override
  ThemeData getTheme() {
    // Implementar temas especializados.
    return ThemeData(
      brightness: Brightness.light,

      primaryColorDark: Colors.teal,
      primaryColor: Colors.teal,

      // Cards
      cardTheme: CardTheme(
        color: Colors.white
      ),

      // Buttons
      buttonColor: Colors.tealAccent,

      //App Bar
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 30
          )
        ),

        //Icons
        iconTheme: IconThemeData(
          color: Colors.black
        )
      )
    );
  }

}