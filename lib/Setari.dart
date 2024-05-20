import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'appBar.dart';

class settings extends StatefulWidget
{
  settings()
  {
    for(int i=0;i<5;i++)
    {

    }
  }

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  List<TextEditingController> mycontroller = [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];

  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: app_bar(context, "Setări"),
        body: SafeArea
          (
            child: Container
              (
                child: Padding
                  (
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Column
                      (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          SizedBox(height: 50,),
                          Text("Configurare IP adresa:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row
                            (
                              children:
                              [
                                Flexible(
                                    child: SizedBox( height: 50,width: 60,
                                      child: TextField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      controller: mycontroller[0],
                                    ), ),
                                ),
                                SizedBox(width: 5,),
                                Text(".",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: SizedBox( height: 50,width: 58,
                                    child:TextField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                    maxLength: 3,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: mycontroller[1],
                                  ), ),
                                ),
                                SizedBox(width: 5,),
                                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15), child:
                                Text(".",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: SizedBox( height: 50,width: 58,
                                  child:TextField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                    maxLength: 3,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: mycontroller[2],
                                  ), ),
                                ),
                                SizedBox(width: 5,),
                                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15), child:
                                Text(".",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: SizedBox(height: 50,width: 58,
                                    child: TextField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                    maxLength: 3,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    controller: mycontroller[3],
                                  ),)
                                ),
                              ],
                            ),
                          SizedBox(height: 25,),
                          Text("Configurare portul:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Flexible(
                              child: SizedBox(height: 50,width: 75,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                  maxLength: 5,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (text)
                                  {
                                    mycontroller[4].text = text;
                                  },
                                ),)
                          ),
                          SizedBox(height: 25,),
                          Text("Ip adresa și portul setat:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Padding
                            (
                              padding: EdgeInsets.only(left: 25),
                              child: Text(mycontroller[0].text+"."+mycontroller[1].text+"."+mycontroller[2].text+"."+mycontroller[3].text+":"+mycontroller[3].text),
                            ),
                          SizedBox(height: 25,),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration
                              (
                              color: Colors.blueAccent.shade100,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow:
                              [
                                BoxShadow
                                  (
                                    color: Colors.black.withOpacity(0.35),
                                    spreadRadius: 1,
                                    blurRadius: 60,
                                    offset: Offset(15,15)
                                ),
                              ],
                            ),
                            child:MaterialButton
                              (
                              onPressed:(){},
                              child: Text("Setare",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                            ), ),
                        ],
                      ),
                  ),
              )
          ),
      );
  }
}