import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:they_chat_app/views/contactsScreen.dart';
import 'package:they_chat_app/views/homeScreen.dart';
import 'package:they_chat_app/views/meScreen.dart';
import 'package:they_chat_app/views/splashScreen.dart';
import 'package:they_chat_app/widgets/appStateNotifier.dart';
import 'package:they_chat_app/widgets/myThemes.dart';

import 'views/startUpScreen.dart';




void main() {
  runApp(
    ChangeNotifierProvider <AppStateNotifier>(
      create:(_)=> AppStateNotifier() ,
      child: SnappApp(),
    )



  );
}

class SnappApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<AppStateNotifier>(
      builder: (context, appState, child){
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Snapp Chat',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light , // function for switching app themes
        home: HomeScreen()
        );
      },

    );
  }
}


