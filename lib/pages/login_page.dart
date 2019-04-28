import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState()=>_LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: <Widget>[
            SizedBox(height: 120.0),
            
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 20.0),
            
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                  },
                ),
                RaisedButton(
                  child: Text('NEXT'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}