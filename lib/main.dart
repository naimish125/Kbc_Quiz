import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Home(),
        'Second':(context) => Second(),
        'Third':(context) => Third(),
      },
    ),
  );
}