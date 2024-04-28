import 'package:flutter/material.dart';

AppBar app_bar(BuildContext context,String title)
{

  return AppBar
    (
      title: Text(title,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      backgroundColor: Colors.blue.shade500
    );
}

class bottom_navigation extends StatefulWidget
{
  bottom_navigation();

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}
int current_index = 0;
class _bottom_navigationState extends State<bottom_navigation> {


  Widget build(BuildContext context)
  {
    print(current_index);
    return BottomNavigationBar
      (
        currentIndex: current_index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Lista proiectelor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'acasa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setari',
          ),
        ],
        onTap: (index)
        {
          current_index = index;
          print(index);
          setState(() {
          });
        }
    );
  }
}