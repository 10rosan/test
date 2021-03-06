import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List data;

  Future<String> getJsonData() async {
    var response = await http.get(
        Uri.encodeFull("http://192.168.1.71/hamrogces/getdata.php"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = json.decode(response.body);
    });

    print(data[1]["notice"]);

    return "Successful";
  }

  @override
  void initState() {
    this.getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text('Notification'),
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: data.length,
                padding: EdgeInsets.all(10.0),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]['notice']),
                    subtitle: Row(children: <Widget>[
                      Text(
                        data[index]['updated_by'],
                        style: new TextStyle(
                          color: Color(0xFF84A2AF),
                        ),
                      ),
                      Text(data[index]['date']),
                    ]),
                  );
                },
              )
            ],
          ),
        )
        /*  new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          //return new Card(
            //child: new Text(data[index]["notice"]),
            reutrn ListTile(

            );
          );*/

        );
  }
}
