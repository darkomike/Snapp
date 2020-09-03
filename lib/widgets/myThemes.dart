import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
      iconTheme: IconThemeData(color: Colors.black, size: 13),
      backgroundColor: Colors.white,
      cardTheme: CardTheme(
        elevation: 0.0,
        color: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black87),
      textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.black, fontSize: 10), // time
        headline6: TextStyle(color: Colors.black, fontSize: 18),
        headline5: TextStyle(color: Colors.black, fontSize: 15),
        overline: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
        headline3: TextStyle(color: Colors.black, fontSize: 18),
        headline2: TextStyle(color: Colors.black, fontSize: 12),
        headline4: TextStyle(color: Colors.grey[600], fontSize: 14),
        headline1: TextStyle(
            color: Colors.blue[400],
            fontSize: 12,
            decoration: TextDecoration.underline), //terms of service
      ),
      scaffoldBackgroundColor: Colors.white70,
      appBarTheme: AppBarTheme(
          textTheme: TextTheme(
              headline6: TextStyle(color: Colors.black, fontSize: 20)),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black)));












  static final ThemeData darkTheme = ThemeData(
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: Colors.blueGrey[800]),
      dialogTheme: DialogTheme(
        elevation: 3,
        backgroundColor: Colors.blueGrey[800],

      ),
      iconTheme: IconThemeData(color: Colors.white70, size: 13),
      dividerTheme: DividerThemeData(color: Colors.white70),
      cardTheme: CardTheme(
        elevation: 0.0,
        color: Colors.blueGrey[800],
      ),
      scaffoldBackgroundColor: Colors.blueGrey[800],
      backgroundColor: Colors.blueGrey[800],
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.white60,
        backgroundColor: Colors.blueGrey[800],
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.white70, fontSize: 20),
        headline5: TextStyle(color: Colors.white70, fontSize: 18), // Dialog
        headline4: TextStyle(color: Colors.grey[400], fontSize: 14),
        headline3: TextStyle(color: Colors.white70, fontSize: 18), //Normal text
        headline2: TextStyle(color: Colors.white70, fontSize: 12),
        headline1: TextStyle(
            color: Colors.blue[400],
            fontSize: 12,
            decoration: TextDecoration.underline), // subtitle style
        subtitle1: TextStyle(color: Colors.white70, fontSize: 10), //time
        subtitle2: TextStyle(color: Colors.blue[400], fontSize: 16),
        bodyText1: TextStyle(
          color: Colors.blue[400],
          fontSize: 12,
        ), //Dialog options text
        bodyText2: TextStyle(
            color: Colors.blue[400], fontSize: 16), //Dialog options text
        button: TextStyle(color: Colors.white70, fontSize: 8),
        overline: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
      ),
      appBarTheme: AppBarTheme(
//          color: Colors.blueGrey[800],
          color: Colors.blueGrey[800],
          iconTheme: IconThemeData(color: Colors.white70)));
}
