

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme{

  static const Color primary = Colors.indigo;


static final ThemeData ligthTheme =  ThemeData.light().copyWith(
    primaryColor: Colors.indigo,

    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( foregroundColor: primary)
    ),

    // FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 0
      ),  
    ),

    // Input decoration theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary ),
      border: OutlineInputBorder(
        borderSide: BorderSide( color: Colors.indigo ),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10) )
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10) )
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: Colors.indigo ),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10) )
      ),
    )

  );

}