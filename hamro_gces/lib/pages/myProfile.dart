import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
          ),
        ),
        drawer: MainDrawer() ,
        
        body: new Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Colors.black.withOpacity(0.8)
              ),
              clipper: getClipper(),
            ),

            Positioned(
              width: 400,
              top: MediaQuery.of(context).size.height / 5,
              child: Column(
                children: <Widget>[
                  Container(
                    width:150,
                    height:150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("images/logo.png"),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(75)
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 8.0, color: Colors.black)
                      ]
                  
                  
                    )

                   ),

                   SizedBox(height: 90),
                   Text(
                     'Roshan Adhikari',
                     style: TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                     ),
                   ),

                   SizedBox(height: 15),
                   Text(
                     'Edit',
                     style: TextStyle(
                       fontSize: 30,
                       fontStyle: FontStyle.italic,
                     ),
                   ),

                   SizedBox(height: 25),
                   Container(
                     height: 30,
                     width: 95,
                     child: Material(
                       borderRadius: BorderRadius.circular(20),
                       shadowColor: Colors.greenAccent,
                       color: Colors.green,
                       elevation: 7.0,
                       child: GestureDetector(
                         onTap: (){},
                           child: Center(
                             child: Text(
                               'Edit Name',
                               style: TextStyle(color: Colors.white),
                             ),

                           ),
                        
                        ),
                     
                     
                     ),
                   ),

                   SizedBox(height: 25),
                   Container(
                     height: 30,
                     width: 95,
                     child: Material(
                       borderRadius: BorderRadius.circular(20),
                       shadowColor: Colors.redAccent,
                       color: Colors.red,
                       elevation: 7.0,
                       child: GestureDetector(
                         onTap: (){},
                           child: Center(
                             child: Text(
                               'Logout',
                               style: TextStyle(color: Colors.white),
                             ),

                           ),
                        
                        ),
                     
                     
                     ),
                   )

                ],


            ) 
              
              
              
              )
          ],
        
        ) //Calling drawer button in every page
      ),
    );
  }
}

class getClipper extends CustomClipper<Path>{
  @override 
  Path getClip(Size size){
    var path= new Path();

    path.lineTo(0.0,size.height / 1.9);
    path.lineTo(size.width +125, 0.0);
    path.close();
    return path;


  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){

    return true;

  }
}
