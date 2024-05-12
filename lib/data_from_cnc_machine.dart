import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class dates_from_cnc
{
  String? name;
  String? data;
  double? proncentes;
  String? nr_instruction;
  String? durata;
  String? status;
  dates_from_cnc(){}
  dates_from_cnc.test(this.name,this.data,this.proncentes,this.nr_instruction,this.durata,this.status)
  {
    print(this.durata!);
  }
  Widget build(BuildContext)
  {
    return Scaffold
      (
        body: Text('ww'),
    );
  }
}
