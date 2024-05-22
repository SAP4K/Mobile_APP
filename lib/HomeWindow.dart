import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'appBar.dart';
import 'http_requests.dart';
class HomeWindow extends StatefulWidget
{
  @override
  State<HomeWindow> createState() => _HomeWindowState();
}

class _HomeWindowState extends State<HomeWindow> {
  double current_slider_value = 0;
  List<bool> selector_xy =
  [
    false,
    false,
    true,
    false,
    false,
    false,
    false,
  ];
  List<bool> selector_z =
  [
    false,
    true,
    false,
    false,
    false,
  ];
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: app_bar(context,'Acasa'),
      body: SafeArea
        (

          child:SingleChildScrollView(
          child:Column
            (
              children: <Widget>
              [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column
                    (
                      children:
                      [
                        SizedBox(height: 50),
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
                                              Container(
                                                decoration: BoxDecoration
                                                  (
                                                    boxShadow:
                                                    [
                                                      BoxShadow
                                                        (
                                                          color: Colors.black.withOpacity(0.35),
                                                          spreadRadius: 1,
                                                          blurRadius:  50,
                                                          offset: Offset(-10,-10)
                                                        ),
                                                    ],
                                                  ),

                                                child:Padding(padding: EdgeInsets.only(right: 10),
                                                  child: MaterialButton
                                                    (
                                                      color: Colors.blueAccent.shade100,
                                                      minWidth: 100,
                                                      height: 100,
                                                      onPressed: ()
                                                      {

                                                      },
                                                      child: Icon(CupertinoIcons.arrow_up_left,size: 60,color:Colors.white),
                                                  ), ),),
                                              Container(
                                                decoration: BoxDecoration
                                                  (
                                                    boxShadow: [
                                                    BoxShadow
                                                      (
                                                        color: Colors.black.withOpacity(0.35),
                                                        spreadRadius: 1,
                                                        blurRadius:  60,
                                                        offset: Offset(0,-20)
                                                      ),],
                                                  ),
                                                child:Padding(padding: EdgeInsets.only(right: 10),
                                                  child: MaterialButton
                                                    (
                                                    color: Colors.blueAccent.shade100,
                                                    minWidth: 100,
                                                    height: 100,
                                                      onPressed: ()
                                                      {
                                                        Http_request().Post("101");
                                                      },
                                                    child: Icon(CupertinoIcons.arrow_up,size: 60,color: Colors.white,),
                                                ), ),),
                                              Container(
                                                decoration: BoxDecoration
                                                  (
                                                    boxShadow:
                                                    [
                                                      BoxShadow
                                                        (
                                                          color: Colors.black.withOpacity(0.35),
                                                          spreadRadius: 1,
                                                          blurRadius: 60,
                                                          offset: Offset(20,-20),
                                                        ),
                                                    ],
                                                  ),
                                              child:MaterialButton
                                                (
                                                color: Colors.blueAccent.shade100,
                                                minWidth: 100,
                                                height: 100,
                                                onPressed: ()
                                                {

                                                },
                                                child: Icon(CupertinoIcons.arrow_up_right,size: 60,color: Colors.white,),
                                              ), ),
                                            ],
                                          ), ),
                                        Padding( padding: EdgeInsets.only(bottom: 10),child: Row(
                                            children: <Widget>
                                            [
                                              Container(
                                                decoration:
                                                BoxDecoration
                                                  (
                                                    boxShadow:
                                                    [
                                                     BoxShadow
                                                       (
                                                       color: Colors.black.withOpacity(0.35),
                                                       spreadRadius: 1,
                                                       blurRadius: 60,
                                                       offset: Offset(-30,0),
                                                     )
                                                    ],
                                                  ),
                                              child:Padding( padding: EdgeInsets.only(right: 10),
                                              child: MaterialButton
                                                (
                                                  color: Colors.blueAccent.shade100,
                                                  minWidth: 100,
                                                  height: 100,
                                                  onPressed: ()
                                                  {
                                                    Http_request().Post("103");
                                                  },
                                                  child: Icon(CupertinoIcons.arrow_left,size: 60,color: Colors.white,)
                                                ), ), ),
                                              Padding( padding: EdgeInsets.only(right: 10) ,
                                              child:MaterialButton
                                                (
                                                color: Colors.blueAccent.shade100,
                                                minWidth: 100,
                                                height: 100,
                                                onPressed: ()
                                                {
                                                  Http_request().Post("111");
                                                },
                                                child: Icon(Icons.stop_circle_outlined,size: 60,color: Colors.red, )
                                              ),),
                                              Container(
                                                decoration:BoxDecoration
                                                  (
                                                  boxShadow:
                                                  [
                                                    BoxShadow
                                                      (
                                                      color: Colors.black.withOpacity(0.35),
                                                      spreadRadius: 1,
                                                      blurRadius: 60,
                                                      offset: Offset(20,0),
                                                    )
                                                  ],
                                                ),
                                              child:MaterialButton
                                                (
                                                color: Colors.blueAccent.shade100,
                                                minWidth: 100,
                                                height: 100,
                                                onPressed: ()
                                                {
                                                  Http_request().Post("104");
                                                },
                                                child: Icon(CupertinoIcons.arrow_right,size: 60,color: Colors.white,)
                                              ), ),
                                            ],
                                          ) ),
                                        Row(
                                           children: <Widget>
                                           [
                                             Container(
                                               decoration:BoxDecoration
                                                 (
                                                 boxShadow:
                                                 [
                                                   BoxShadow
                                                     (
                                                     color: Colors.black.withOpacity(0.35),
                                                     spreadRadius: 1,
                                                     blurRadius: 60,
                                                     offset: Offset(-20,20),
                                                   )
                                                 ],
                                               ),
                                             child:Padding(padding: EdgeInsets.only(right: 10) ,
                                             child:MaterialButton
                                                (
                                                 color: Colors.blueAccent.shade100,
                                                 minWidth: 100,
                                                 height: 100,
                                                 onPressed: (){},
                                                 child: Icon(CupertinoIcons.arrow_down_left,size: 60,color: Colors.white,),
                                                ), ),),
                                             Container(
                                               decoration:BoxDecoration
                                                 (
                                                 boxShadow:
                                                 [
                                                   BoxShadow
                                                     (
                                                     color: Colors.black.withOpacity(0.35),
                                                     spreadRadius: 1,
                                                     blurRadius: 60,
                                                     offset: Offset(0,20),
                                                   )
                                                 ],
                                               ),
                                             child:Padding( padding: EdgeInsets.only(right: 10) ,
                                             child:MaterialButton
                                               (
                                               color: Colors.blueAccent.shade100,
                                               minWidth: 100,
                                               height: 100,
                                               onPressed: ()
                                               {
                                                 Http_request().Post("102");
                                               },
                                               child: Icon(CupertinoIcons.arrow_down,size: 60,color:Colors.white),
                                             ),),),
                                             Container(
                                               decoration:BoxDecoration
                                                 (
                                                 boxShadow:
                                                 [
                                                   BoxShadow
                                                     (
                                                     color: Colors.black.withOpacity(0.35),
                                                     spreadRadius: 1,
                                                     blurRadius: 60,
                                                     offset: Offset(20,20),
                                                   )
                                                 ],
                                               ),
                                             child:MaterialButton
                                               (
                                               color: Colors.blueAccent.shade100,
                                               minWidth: 100,
                                               height: 100,
                                               onPressed: ()
                                               {
                                               },
                                               child: Icon(CupertinoIcons.arrow_down_right,size: 60,color: Colors.white)
                                             ), ),
                                           ],
                                          ),
                                      ],
                                    ),),
                                ),
                              Expanded
                                (
                                  flex: 3,
                                    child: FittedBox(
                                    child:Column
                                      (
                                          children: <Widget>
                                          [
                                            Container(
                                              decoration:BoxDecoration
                                                    (
                                                        boxShadow:
                                                        [
                                                        BoxShadow
                                                        (
                                                        color: Colors.black.withOpacity(0.35),
                                                      spreadRadius: 1,
                                                      blurRadius: 50,
                                                      offset: Offset(10,-20),
                                                    )
                                                ],
                                              ),
                                            child:Padding(padding: EdgeInsets.fromLTRB(0,10,0,10),
                                            child:MaterialButton
                                              (
                                                color: Colors.blueAccent.shade100,
                                                minWidth: 100,
                                                height: 100,
                                                onPressed: ()
                                                {
                                                  Http_request().Post("105");
                                                },
                                                child: Icon(CupertinoIcons.arrow_up,size: 60,color: Colors.white)
                                              ),),),
                                            Container(
                                              decoration:       BoxDecoration
                                                (
                                                boxShadow:
                                                [
                                                  BoxShadow
                                                    (
                                                    color: Colors.black.withOpacity(0.35),
                                                    spreadRadius: 1,
                                                    blurRadius: 60,
                                                    offset: Offset(20,0),
                                                  )
                                                ],
                                              ),
                                            child:Padding( padding: EdgeInsets.only(bottom: 10) ,
                                            child:MaterialButton
                                              (
                                              color: Colors.blueAccent.shade100,
                                              minWidth: 100,
                                              height: 100,
                                              onPressed:()
                                              {
                                                Http_request().Post("111");
                                              },
                                              child: Icon(Icons.stop_circle_outlined,size: 60,color: Colors.red, ),
                                              ),),),
                                            Container(
                                            decoration:BoxDecoration
                                              (
                                              boxShadow:
                                              [
                                                BoxShadow
                                                  (
                                                  color: Colors.black.withOpacity(0.35),
                                                  spreadRadius: 1,
                                                  blurRadius: 60,
                                                  offset: Offset(0,20),
                                                )
                                              ],
                                            ),
                                            child:Padding(padding: EdgeInsets.only(bottom: 10),
                                            child:MaterialButton(
                                              color: Colors.blueAccent.shade100,
                                              minWidth: 100,
                                              height: 100,
                                              onPressed: ()
                                              {
                                                Http_request().Post("106");
                                              },
                                              child: Icon(CupertinoIcons.arrow_down,size: 60,color: Colors.white,)
                                            ),),),
                                          ],
                                      ), ),
                              ),
                            ],
                          ),
                        ),
                        Container
                          (
                            width: MediaQuery.of(context).size.width*0.95,
                            height: 600,
                                child: Column
                                  (
                                      children: <Widget>
                                      [
                                        SizedBox(height: 25,),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Poziția de start:",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.063),),),
                                          SizedBox(height: 10,),
                                          FittedBox(child:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>
                                            [
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
                                                  onPressed:()
                                                  {
                                                    Http_request().Post("107");
                                                  },
                                                  child: Text("Setare",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                                ), ),
                                              SizedBox(width: MediaQuery.of(context).size.width*0.30),
                                              Container(
                                                height: 50,
                                                width: 100,
                                                decoration: BoxDecoration
                                                  (
                                                  color: Colors.blueAccent.shade100,
                                                  borderRadius: BorderRadius.circular(10),
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
                                                child: MaterialButton
                                                  (
                                                  onPressed:()
                                                  {
                                                    Http_request().Post("108");
                                                  },
                                                  child: Text("Returnare",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                                ),),
                                            ],
                                          ),),
                                        SizedBox(height: 25,),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Setare Scară axele XY(milimetri):",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.063),),),
                                        SizedBox(height: 10,),
                                        Align(alignment: Alignment.topLeft,
                                        child:ToggleButtons(
                                            constraints: BoxConstraints
                                              (
                                                minWidth: MediaQuery.of(context).size.width*0.132,
                                                minHeight: 55,
                                              ),
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                            selectedBorderColor: Colors.blueAccent.shade100,
                                            fillColor: Colors.blueAccent.shade100,
                                            selectedColor: Colors.white,
                                            color: Colors.blueAccent.shade100,
                                            children:
                                            [
                                              Text("0.01",style: TextStyle(fontWeight: FontWeight.bold),),
                                              Text("0.1",style:  TextStyle(fontWeight: FontWeight.bold),),
                                              Text("1",style:    TextStyle(fontWeight: FontWeight.bold),),
                                              Text("5",style:    TextStyle(fontWeight: FontWeight.bold),),
                                              Text("10",style:   TextStyle(fontWeight: FontWeight.bold),),
                                              Text("50",style:   TextStyle(fontWeight: FontWeight.bold),),
                                              Text("100",style:  TextStyle(fontWeight: FontWeight.bold),),
                                            ],
                                            onPressed: (int index)
                                            {
                                              for(int i=0;i<7;i++)
                                              {
                                                selector_xy[i] = false;
                                              }
                                              selector_xy[index] = true;
                                              Http_request().Post("109_"+index.toString());
                                              setState(() {
                                              });
                                            },
                                            isSelected: selector_xy),),
                                        SizedBox(height: 25,),
                                        Align
                                          (
                                            alignment: Alignment.topLeft,
                                            child: Text("Setare Scară axa Z(milimetri):",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.063),
                                          ), ),
                                        SizedBox(height: 10,),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: ToggleButtons
                                              (
                                              borderRadius: BorderRadius.all(Radius.circular(8)),
                                              selectedBorderColor: Colors.blueAccent.shade100,
                                              fillColor: Colors.blueAccent.shade100,
                                              selectedColor: Colors.white,
                                              color: Colors.blueAccent.shade100,
                                                constraints: BoxConstraints
                                                (
                                                  minWidth: MediaQuery.of(context).size.width*0.132,
                                                  minHeight: 55,
                                                ),

                                              children:
                                                [
                                                  Text("0.01",style: TextStyle(fontWeight: FontWeight.bold),),
                                                  Text("0.1", style: TextStyle(fontWeight: FontWeight.bold),),
                                                  Text("1",   style: TextStyle(fontWeight: FontWeight.bold),),
                                                  Text("5",   style: TextStyle(fontWeight: FontWeight.bold),),
                                                  Text("10",  style: TextStyle(fontWeight: FontWeight.bold),),
                                                ],
                                                onPressed: (int index)
                                                {
                                                  for(int i=0;i<5;i++)
                                                  {
                                                    selector_z[i] = false;
                                                  }
                                                  Http_request().Post("110_"+index.toString());
                                                  selector_z[index] = true;
                                                  setState(() {});
                                                },
                                              isSelected: selector_z,
                                              ),
                                          ),
                                        SizedBox(height: 25,),
                                        Align
                                          (
                                            alignment: Alignment.topLeft,
                                            child: Text("Setare rotații:",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.063),)
                                          ),
                                        Align
                                          (
                                            alignment: Alignment.topLeft,
                                            child: Slider
                                              (
                                                activeColor: Colors.blueAccent.shade100,
                                                value: current_slider_value,
                                                max: 1000,
                                                divisions: 1000,
                                                label: current_slider_value.toString(),
                                                onChanged: (double value)
                                                {
                                                  current_slider_value = value;
                                                  Http_request().Post("112_"+current_slider_value.toInt().toString());
                                                  setState(() {});
                                                },
                                              ),
                                          ),
                                        FittedBox(
                                        child:Row
                                          (
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>
                                            [
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
                                                onPressed:()
                                                {
                                                  Http_request().Post("113");
                                                },
                                                child: Text("START",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                                ), ),
                                                SizedBox(width: MediaQuery.of(context).size.width*0.30),
                                                Container(
                                                  height: 50,
                                                  width: 100,
                                                  decoration: BoxDecoration
                                                    (
                                                      color: Colors.blueAccent.shade100,
                                                      borderRadius: BorderRadius.circular(10),
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
                                                child: MaterialButton
                                                  (
                                                    onPressed:()
                                                    {
                                                      Http_request().Post("114");
                                                    },
                                                    child: Text("STOP",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                                  ),),
                                            ],
                                          ), ),
                                      ],
                                  ),
                          ),
                      ],
                  ),
                ),
              ],
          ),
          ),
        ),
    );
  }
}