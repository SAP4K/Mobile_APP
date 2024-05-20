import 'package:flutter/material.dart';
import 'appBar.dart';
class detail_notification extends StatefulWidget
{
  @override
  State<detail_notification> createState() => _detail_notificationState();
}

class _detail_notificationState extends State<detail_notification> {
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: app_bar(context, "Detalii Notificare"),
        body:
          SafeArea
          (
            child: Text("abc"),
          ),
      );
  }
}