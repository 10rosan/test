import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_drawer.dart';

class AboutUs extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('About Us'),
        ),
        drawer: MainDrawer() ,
      ),
    );
  }
}