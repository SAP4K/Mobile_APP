import 'package:flutter/material.dart';
import 'data_from_cnc_machine.dart';
import 'package:percent_indicator/percent_indicator.dart';
class details_project extends StatelessWidget
{
  dates_from_cnc? detail_object;
  details_project(this.detail_object)
  {
      print(this.detail_object!.name);
  }
  TextStyle style_text = TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold);
  Widget Circle_Widget(BuildContext context)
  {
    return CircularPercentIndicator(
      radius: 100,
      header: Text('Nivel Realizare'),
      percent: detail_object!.proncentes!,
      circularStrokeCap: CircularStrokeCap.round,
      lineWidth: 8,
    );
  }
  Widget build(BuildContext context)
  {
    double width1 =  MediaQuery.of(context).size.width;
    double left = width1*0.08;

    return Scaffold
      (
      backgroundColor: Colors.white,
      appBar: AppBar
        (
        title: Text('Detalii proiect',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blue.shade500
      ),
      body: SafeArea
        (
        child: Padding
          (
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child:
            GridView.count(
              crossAxisCount: 1,
              children:
              [
                Padding(padding: EdgeInsets.fromLTRB(left, 70, left, 70),
                child:Container
                  (
                  child: Circle_Widget(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent.shade100,
                      boxShadow:
                      [
                        BoxShadow
                          (
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 5,
                          blurRadius:  15,
                          offset: Offset(5,5)
                        )
                      ]
                  ),
                ),
                ),
                Text('asdd'),
              ],
            )
        ),
      )
    );
  }
}