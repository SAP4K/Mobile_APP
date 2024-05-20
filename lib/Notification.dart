import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'appBar.dart';
import 'data_from_cnc_machine.dart';
import 'App_Navigator.dart';
List<dates_from_cnc> dates = <dates_from_cnc>[dates_from_cnc.test('test.nc','11.11.2022',0.3,'200','1:11:21',"Proces"),
  dates_from_cnc.test('hello.nc', '20.01.2023', 0.7,'139','2:51:33',"Eroare"),
  dates_from_cnc.test('tico.nc', '25.06.2023', 1,'99','4:23:01',"Complet")];
class notification extends StatefulWidget
{

  notification();
  @override
  State<notification> createState() => _notificationState();
}

Widget notification_widget(BuildContext context, dates_from_cnc date)
{
    Color? current_color;
    switch(date.status!)
    {
      case "Proces":{current_color = Colors.blueAccent.shade100; }break;
      case "Eroare":{current_color = Colors.red.shade200;}break;
      case "Complet":{ current_color = Colors.green.shade200;};
    }

        return Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:Container
          (
              decoration: BoxDecoration
                (
                color: current_color!,
                borderRadius: BorderRadius.circular(10),
                boxShadow:
                [BoxShadow
                  (
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius:  30,
                    offset: Offset(3,3) )],
              ),
            child: Padding
              (padding: EdgeInsets.only(left: 10),
              child: Padding(padding: EdgeInsets.only(left: 10),
              child:
                  TextButton
                    (
                      style: ButtonStyle(alignment: Alignment.topLeft),
                      onPressed: ()
                      {
                        context.goNamed("Det",);
                      },
                      child: Column
                        (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          SizedBox(height: 10,),
                          Text("Status: "+date.status!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                          SizedBox(height: 10,),
                          Text("Proiect: "+date.name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                          SizedBox(height: 10),
                          Text("Data: "+date.data!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                          SizedBox(height: 10),
                        ],
                      ),
                    )
              ),
              ),
          )
        );
}

class _notificationState extends State<notification> {
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: app_bar(context, "Notificări"),
        body: SafeArea
          (
            child: ListView.builder
              (
                itemCount: 3,
                itemBuilder: (context,index)
                {
                  return notification_widget(context,dates[index]);
                },
              ),
          ),
      );
  }
}