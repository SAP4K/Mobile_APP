import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';
class dates_from_cnc
{
  String? name;
  String? data;
  double? proncentes;
  String? nr_instruction;
  String? durata;
  dates_from_cnc(){}
  dates_from_cnc.test(this.name,this.data,this.proncentes,this.nr_instruction,this.durata)
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
