import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page', style: TextStyle(),
        ), backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child:Icon(
              Icons.person,
              size: 150.0,
              color: Colors.blueAccent,
            ) ,
          ),
          Container(
            child: Text(
              '@Username',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            child: Text(
              '@Password',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
