import 'package:flutter/material.dart';
import 'package:hamro_gces/drawer.dart';
import 'package:hamro_gces/login.dart';
import 'material.dart';
import 'aboutUs.dart';
import 'library.dart';
import 'myProfile.dart';
import 'notification.dart';
import 'result.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Here Will be my profile picture and email'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DrawerButton()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyProfile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text(
              'Library',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LibraryPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(
              'Result',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Result()));
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text(
              'Materials',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MaterialPage()));
            },
          ),
          /*  ListTile(
            title: Text(
              'About Us',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),*/
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          )
        ],
      ),
    );
  }
}
