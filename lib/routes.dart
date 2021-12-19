import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'globals.dart';
import 'view/login_page.dart';

class Routes {
  static final String LOGIN_PAGE = "/Login";

  Routes() {
    initialize();
  }

  Future<Widget> _handleCurrentScreen() async {
    return LoginPage();
  }

  var routes = <String, WidgetBuilder>{
    LOGIN_PAGE: (BuildContext context) => new LoginPage(),
  };

  void initialize() async {
    runApp(new GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => 'UpRDown',
      home: await _handleCurrentScreen(),
      routes: routes,
      theme: new ThemeData(
        fontFamily: 'Montserrat-Regular',
        primaryColor: primaryColor,
        canvasColor: canvasColor,
        appBarTheme: AppBarTheme(elevation: 0),
      ),
    ));
  }
}
