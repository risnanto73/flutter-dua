import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter2/ui_view/signup.dart';

import 'home.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              children:<Widget>[
                Icon(
                  Icons.person,
                  size: 150.0,
                color: Colors.blueAccent,),
                Text(
                  'Welcome to MyApp',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                hintText: 'Masukan Email',
                icon: Icon(Icons.email, color: Colors.blueAccent,),
              ),
            ),
          ),
          SizedBox(height: 10.0,),

          Container(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Masukan Password',
                icon: Icon(Icons.admin_panel_settings_sharp,color: Colors.blueAccent,),
              ),
            ),
          ),

          SizedBox(height: 30.0,),
          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
              color: Colors.blueAccent,
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    color: Colors.redAccent,
                    child: Text(
                      'Belum punya akun?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                Container(
                  alignment: Alignment.center,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    color: Colors.blueAccent,
                    child: Text(
                    'Kembali',
                      style: TextStyle(color: Colors.white),
                  ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }

}