import 'package:flutter/material.dart';
import 'package:flutter2/ui_view/home.dart';
import 'package:flutter2/ui_view/login.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
        ), backgroundColor: Colors.red,
      ),backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Container(
            child: Column(
              children:<Widget>[
                Icon(
                  Icons.person,
                  size: 150.0,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Register',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.redAccent),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Username',
                icon: Icon(Icons.account_box, color: Colors.redAccent,),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  icon: Icon(Icons.alternate_email, color: Colors.redAccent,),
                  hintText: 'Email',
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Password',
                icon: Icon(Icons.admin_panel_settings_sharp,color: Colors.redAccent,),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Confirm Password',
                icon: Icon(Icons.admin_panel_settings_sharp, color: Colors.redAccent,),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              color: Colors.redAccent,
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  child: FlatButton(
                    onPressed:(){
                    },
                    child: Text(
                      'Sudah punya akun?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    color: Colors.redAccent,
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }

}