import 'package:flutter/material.dart';
import 'package:ui1_educational_app/Screens/home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    home: const Home(),
  ));
}

