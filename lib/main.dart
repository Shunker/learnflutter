import 'package:flutter/material.dart';
import './pages/index_page.dart';




void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      home: IndexPage()
    );
  }
}

