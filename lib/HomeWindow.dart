import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'appBar.dart';
class HomeWindow extends StatelessWidget
{

  Widget build(BuildContext context)
  {
    return Scaffold
      (

      appBar: app_bar(context,'Acasa'),
      body: SafeArea
        (
          child: Column
            (
              children: <Widget>
              [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column
                    (
                      children:
                      [
                        SizedBox(height: 50,),
                        Container
                          (
                          width: MediaQuery.of(context).size.width*0.95,
                          height: MediaQuery.of(context).size.height*0.35,
                          child:
                          Row
                            (
                            children:
                            [
                              Expanded
                                (
                                  flex: 7,
                                  child: FittedBox(
                                  child:Column
                                    (
                                      children: <Widget>
                                      [
                                        Padding(padding: EdgeInsets.only(bottom: 10) ,child:  Row(
                                            children: <Widget>
                                            [
                                              Padding(padding: EdgeInsets.only(right: 10),
                                              child: MaterialButton
                                                (
                                                  color: Colors.blueAccent.shade100,
                                                  minWidth: 100,
                                                  height: 100,
                                                  onPressed: ()
                                                  {

                                                  },
                                                  child: Text("A",style: TextStyle(fontSize: 50),),
                                              ), ),
                                              Padding(padding: EdgeInsets.only(right: 10),
                                              child: MaterialButton
                                                (
                                                color: Colors.blueAccent.shade100,
                                                minWidth: 100,
                                                height: 100,
                                                  onPressed: ()
                                                  {

                                                  },
                                                child: Text("B",style: TextStyle(fontSize: 50),),
                                                ), ),
                                              MaterialButton
                                                (
                                                color: Colors.blueAccent.shade100,
                                                minWidth: 100,
                                                height: 100,
                                                onPressed: ()
                                                {

                                                },
                                                child: Text("C",style: TextStyle(fontSize: 50),),
                                              ),
                                            ],
                                          ), ),
                                        Padding( padding: EdgeInsets.only(bottom: 10),child: Row(
                                            children: <Widget>
                                            [
                                              Padding( padding: EdgeInsets.only(right: 10),
                                              child: MaterialButton
                                                (
                                                  color: Colors.blueAccent.shade100,
                                                  minWidth: 100,
                                                  height: 100,
                                                  onPressed: (){},
                                                  child: Text("D",style: TextStyle(fontSize: 50),),
                                                ), ),
                                              Padding( padding: EdgeInsets.only(right: 10) ,
                                              child:MaterialButton
                                                (
                                                color: Colors.blueAccent.shade100,
                                                minWidth: 100,
                                                height: 100,
                                                onPressed: (){},
                                                child: Text("E",style: TextStyle(fontSize: 50),),
                                              ),),
                                              MaterialButton
                                                (
                                                color: Colors.blueAccent.shade100,
                                                minWidth: 100,
                                                height: 100,
                                                onPressed: (){},
                                                child: Text("E",style: TextStyle(fontSize: 50),),
                                              ),
                                            ],
                                          ) ),
                                        Row(
                                           children: <Widget>
                                           [
                                             Padding(padding: EdgeInsets.only(right: 10) ,
                                             child:MaterialButton
                                                (
                                                 color: Colors.blueAccent.shade100,
                                                 minWidth: 100,
                                                 height: 100,
                                                 onPressed: (){},
                                                 child: Text("F",style: TextStyle(fontSize: 50),),
                                                ), ),
                                             Padding( padding: EdgeInsets.only(right: 10) ,
                                             child:MaterialButton
                                               (
                                               color: Colors.blueAccent.shade100,
                                               minWidth: 100,
                                               height: 100,
                                               onPressed: (){},
                                               child: Text("G",style: TextStyle(fontSize: 50),),
                                             ),),
                                             MaterialButton
                                               (
                                               color: Colors.blueAccent.shade100,
                                               minWidth: 100,
                                               height: 100,
                                               onPressed: (){},
                                               child: Text("H",style: TextStyle(fontSize: 50),),
                                             ),
                                           ],
                                          ),
                                      ],
                                    ),),
                                ),
                              Expanded
                                (
                                  flex: 3,
                                  child: Container
                                    (
                                    decoration: BoxDecoration(color: Colors.deepOrangeAccent),
                                    child: Column
                                      (
                                          children: <Widget>
                                          [
                                            MaterialButton
                                              (
                                                onPressed: (){},
                                                child: Text("a"),
                                              ),
                                            MaterialButton
                                              (
                                              onPressed:(){},
                                              child: Text("B"),
                                              ),
                                            MaterialButton(
                                                onPressed: (){},
                                                child: Text("C"),
                                            ),
                                          ],
                                      ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 100,),
                        Container
                          (
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration
                              (
                                color: Colors.yellow,
                              ),
                          ),
                      ],
                  ),
                ),

              ],
          ),
        ),
    );
  }
}