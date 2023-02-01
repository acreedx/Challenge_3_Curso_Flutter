import 'package:flutter/material.dart';
import 'package:laboratorioleccion7/src/pages/bottom_nav_bar_page.dart';
import 'package:laboratorioleccion7/src/pages/error_page.dart';
import 'package:laboratorioleccion7/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings){
        return MaterialPageRoute(builder: (context) {
          return const ErrorPage();
        });
      },
    );
  }
}
