import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hamro_gces/drawer.dart';
import './drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';






class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState()  {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {

  
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  String message ="";
  

  Future login() async{
    String url = "http://192.168.1.71/hamrogces/login.php";
    var response = await http.post(url, body: {
      "email" : email.text,
      "password" : password.text
    });


    var dataUser = json.decode(response.body);

    if(dataUser.length == 1){
      //goto homepage
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DrawerButton()));
    }else{
      //show invalid details
      setState(() {
        message = "Invalid username or password";
        
        
      });
    }

  }

  
  
  

 

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/uibg.jpg"),
            fit: BoxFit.cover,
          ),
                   
        ),
        padding: EdgeInsets.all(40.0),


        
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Image.asset(
                'images/logo.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 40.0,
              ),
              new Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),

              Expanded(

                child: Form(
                  key: key,
                
                child: ListView(

                  
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: const Icon(Icons.person, color: Colors.black,),
                            //hintText: 'Username'
                          ),
                          controller: email,
                          validator: (value) => value.isEmpty ? 'Email cannot be empty' : null,
                            
                        ),
                        SizedBox(height: 10),

                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock, color:Colors.black),
                            //hintText: 'Username'
                          ),
                          controller: password,
                          validator: (value) => value.isEmpty ? 'Password cannot be empty' : null,
                        ),
                        SizedBox(height: 10),

                        Text(message),

                        RaisedButton(
                          onPressed:(){
                            if(key.currentState.validate()){
                              login();
                            }
                          },
                          child: new Text("Login"),
                            
                          
                    )
                  ],





                ),
                    
                    ),
                    
                    
                  ],
                ) )
                
                
                
              )
             
           

                                  
            ],
          ),

      )
        );
      
  
  }
  }
 
  