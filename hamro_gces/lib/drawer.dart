import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/main_drawer.dart';

class DrawerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Hamro GCES'),
        ),
        drawer: MainDrawer(),
       
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/home.jpg'
            )
          ],
        ),
      ),

      ),
    );
  }
}
