import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'details_project.dart';
import 'data_from_cnc_machine.dart';
import 'appBar.dart';
List<dates_from_cnc> dates = <dates_from_cnc>[dates_from_cnc.test('test.nc','11.11.2022',0.3,'200','1:11:21'),
  dates_from_cnc.test('hello.nc', '20.01.2023', 0.7,'139','2:51:33'),
  dates_from_cnc.test('tico.nc', '25.06.2023', 0.9,'99','4:23:01')];
class ListaProiecte extends StatefulWidget
{
  ListaProiecte();
  @override
  State<ListaProiecte> createState() => _ListaProiecteState();
}

class _ListaProiecteState extends State<ListaProiecte> {
  Widget Element(BuildContext context,int index,List<dates_from_cnc> personal)
  {
    return Padding(
      padding:EdgeInsets.all(13),
      child:Container
          (decoration: BoxDecoration
              ( borderRadius: BorderRadius.circular(25),
                color: Colors.blueAccent.shade100,
                boxShadow:
                [BoxShadow
                    (
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 5,
                      blurRadius:  30,
                      offset: Offset(3,3) )] ),
          width: 5,
          height: 5,
          child:TextButton
            (onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => details_project(dates[index] ) ) ); },
              child: Center
                (child: CircularPercentIndicator(
                radius: 50,
                center: Text((dates[index].proncentes!*100).toString()+"%",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold ),),
                percent: dates[index].proncentes!,
                footer: Text(dates[index].name!,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                circularStrokeCap: CircularStrokeCap.round,
                lineWidth: 8,
              ),
              ),
          ),
        ),);}

  Widget build(BuildContext context)
  {
    return Scaffold
      (
      backgroundColor: Colors.white,
      appBar:app_bar(context,'Istoricul Proiectelor'),
      body: SafeArea
        (
        child:
          GridView.builder(
              itemCount: 3,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (contex,index)
              {
                  return Element(context,index,dates);
              },
          ),
      ),
    );
  }
}