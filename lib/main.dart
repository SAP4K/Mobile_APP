import 'package:flutter/material.dart';
import 'App_Navigator.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router
      (
        debugShowCheckedModeBanner: false,
        routerConfig: app_Navigatr.router,
      );
  }
}

