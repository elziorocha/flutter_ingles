import 'package:flutter/material.dart';
import 'package:flutter_aula2609/Home.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
      primaryColor: Color.fromRGBO(228, 225, 233, 1),
      scaffoldBackgroundColor: Color.fromRGBO(124, 93, 173, 1),
    ),
  )
);