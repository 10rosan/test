import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class LibraryPage extends StatefulWidget{

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {

  List data;
  
 
  Future<String> getJsonData() async{
    var response =await http.get(
      Uri.encodeFull("http://192.168.1.71/hamrogces/getdata.php"),
      headers: {"Accept": "application/json"}
    );

    this.setState((){
      data = json.decode(response.body);
    });

    print(data[1]["notice"]);

    return "Successful";
  }

  @override
  void initState(){
    this.getJsonData();
  }


  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Library'),
        ),
        drawer: MainDrawer() ,
      ),
    );
  }
}