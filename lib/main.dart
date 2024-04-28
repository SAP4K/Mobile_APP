import 'package:flutter/material.dart';
import 'list_projects.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/projects',
      routes: {
        '/projects': (context) => MainWindow()

      }
      );
  }
}

