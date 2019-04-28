import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './sale_page.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text("会员中心"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  width: 150.0,
                  height: 150.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 1.0),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: new AssetImage('images/logo.jpg'))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200]
                ),
                child: Row(
                  children: saleList
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Divider(
                height: 1.0,
              ),
              ListTile(
                  leading: const Icon(Icons.photo_album),
                  title: const Text('卡包'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {/* react to the tile being tapped */}),
              Divider(
                height: 1.0,
              ),
              ListTile(
                  leading: const Icon(Icons.card_giftcard),
                  title: const Text('收藏'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {/* react to the tile being tapped */}),
              Divider(
                height: 1.0,
              ),
              ListTile(
                  leading: const Icon(Icons.location_city),
                  title: const Text('地址'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {/* react to the tile being tapped */}),
              Divider(
                height: 1.0,
              ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  List<Widget> saleList=[
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
  ];


}