import 'package:flutter/material.dart';
import 'package:flutter2/ui_view/home.dart';
import 'package:flutter2/ui_view/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'Welcom to My App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.blueAccent),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            alignment: Alignment.center,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,MaterialPageRoute(builder:(context) => Login()));
              },
              color: Colors.blueAccent,
              child: Text(
                'login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }

}



