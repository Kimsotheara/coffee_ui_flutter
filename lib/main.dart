import 'package:flutter/material.dart';
import 'details.dart';
import 'home.dart';
import 'menu.dart';
import 'summary.dart';
import 'login.dart' as log;

void main() =>  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: log.Login(),
      routes: {
        // "/login": (context) => log.Login(),
        "/": (context) => Home(),
        "/menu": ((context) => Menu()),
        "/details": ((context) => Details()),
        "/summary": ((context) => Summary())
      },
    ));
