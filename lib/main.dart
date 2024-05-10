import 'package:flutter/material.dart';
import 'list_projects.dart';
import 'HomeWindow.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';
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

