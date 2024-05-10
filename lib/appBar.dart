import 'package:flutter/material.dart';
import 'HomeWindow.dart';
import 'list_projects.dart';
import 'HomeWindow.dart';
AppBar app_bar(BuildContext context,String title)
{

  return AppBar
    (
      title: Text(title,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      backgroundColor: Colors.blue.shade500
    );
}

