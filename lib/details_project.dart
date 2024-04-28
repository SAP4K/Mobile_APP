import 'package:flutter/material.dart';
import 'data_from_cnc_machine.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'appBar.dart';
class details_project extends StatelessWidget
{
  dates_from_cnc? detail_object;
  details_project(this.detail_object);
  TextStyle style_text = TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold);
  Widget Circle_Widget(BuildContext context)
  {
    return CircularPercentIndicator(
      radius: 100,
      header: Text('Nivel Realizare',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24),),
      percent: detail_object!.proncentes!,
      center: Text( (detail_object!.proncentes!*100).toString()+' %',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 24),),
      circularStrokeCap: CircularStrokeCap.round,
      lineWidth: 8,
    );
  }

  Widget build(BuildContext context)
  {
    double width1 =  MediaQuery.of(context).size.width;
    double left = width1*0.1;
    BoxDecoration decorator = BoxDecoration(
        borderRadius: BorderRadius.circular(5),
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
    );

    Widget row_details(BuildContext context,String Indicatie,String datele)
    {
      return Padding(
        padding: EdgeInsets.fromLTRB(left, 0, left, 20),
        child:Container
          (
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(Indicatie+': '+datele,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white,),
              ),
            ),
            width: width1,
            height: 35,
            decoration: decorator
        ),
      );
    }

    return Scaffold
      (
      backgroundColor: Colors.white,
      appBar: app_bar(context,'Detalii Proiect'),
      body: SafeArea
        (
        child: GridView.count(
              childAspectRatio: 100/100,
              crossAxisCount: 1,
              children:
              <Widget>[
                Column
                  (
                  children:
                  <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(left, 50, left, 50),
                      child:Container
                        (
                        child: Circle_Widget(context),
                        width: width1,
                        height: 250,
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
                        )
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView
                  (
                    child: Column
                      (
                        children:
                        [
                          row_details(context,'Denumire',detail_object!.name!),
                          row_details(context,'Data Realizarii',detail_object!.data!),
                          row_details(context,'Durata',detail_object!.durata!),
                          row_details(context,'Nr.Instructiuni',detail_object!.nr_instruction!),
                          row_details(context, 'Data', detail_object!.data!),
                        ],
                    ),
                ),
              ],
            )
      ),
      bottomNavigationBar: bottom_navigation(),
    );
  }
}