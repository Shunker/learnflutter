import 'package:flutter/material.dart';

class SalePage extends StatefulWidget {
  _SalePageState createState()=> _SalePageState();
}

class _SalePageState extends State<SalePage> {
  TabController _controller=TabController(length: 5,initialIndex: 0);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('售后'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Expanded(
                      child: Column(children: <Widget>[
                      Icon(Icons.book,color: Colors.blue,),
                      Text('待付款')
                    ],),
                    ),
                    Expanded(
                      child: Column(children: <Widget>[
                      Icon(Icons.card_membership,color: Colors.blue,),
                      Text('待发货')
                    ],),
                    ),
                    Expanded(
                      child: Column(children: <Widget>[
                      Icon(Icons.card_travel,color: Colors.blue,),
                      Text('待收货')
                    ],),
                    ),
                    Expanded(
                      child: Column(children: <Widget>[
                      Icon(Icons.comment,color: Colors.blue,),
                      Text('待评价')
                    ],),
                    ),
                    Expanded(
                      child: Column(children: <Widget>[
                      Icon(Icons.satellite,color: Colors.blue,),
                      Text('退款/售后')
                    ],),
                    ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Text('待发货'),
          Text('待发货'),
          Text('待收货'),
          Text('待评价'),
          Text('退款/售后')
        ],
      ),
    );
  }
}