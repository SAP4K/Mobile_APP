import 'package:flutter/material.dart';
AppBar app_bar(BuildContext context,String title)
{

  return AppBar
    (
      title: Text(title,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      backgroundColor: Colors.blue.shade500
    );
}

