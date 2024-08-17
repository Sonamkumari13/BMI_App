import 'package:bmi/Config/Themes.dart';
import 'package:flutter/material.dart';
import 'package:bmi/Pages/HomePage.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: ' BMI App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomePage(),
    );
  }
}