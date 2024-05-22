import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Http_request
{
  Future<void> Post(String command) async
  {
    final uri = Uri.http("192.168.0.101:55817","/query");
    Response res =await post(uri,body: command);
    print(res.body);
  }
}