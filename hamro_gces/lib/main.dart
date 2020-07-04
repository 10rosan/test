import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hamro_gces/drawer.dart';
import './drawer.dart';
import 'login.dart';



void main()=> runApp(MyApp());


   

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
            primaryColor: Color(0xFFFB4158),
          ),
      home:  LoginPage(),
      routes: <String,WidgetBuilder>{
        '/drawer': (BuildContext context)=> new DrawerButton(), //directs to drawer button where main home page with image
      } 
        
    );
            
  }
}




