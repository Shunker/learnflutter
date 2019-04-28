import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './login_page.dart';
import './sale_page.dart';
class UserPage extends StatefulWidget{
_UserPageState createState()=>_UserPageState();
}
class _UserPageState extends State<UserPage> {
  final String choicetitle='';
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
                  child: GestureDetector(
                    onTap: ()=>{Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return LoginPage();
                  }))},
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[200]),
                child: Row(
                  children: choices.map((Choice choice) {
                    return Expanded(
                      key: Key(choice.title),
                        child: GestureDetector(                          
                      child: _getItemContainer(choice),
                      onTap: () => {
                            Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                              return SalePage(choicetitle: choice.title,);
                            }))
                          },
                    ));
                  }).toList(),
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

  Widget _getItemContainer(choice) {
    return Column(
                        children: <Widget>[
                          Icon(
                            choice.icon,
                            color: Colors.blue,
                          ),
                          Text(choice.title),
                        ],
                      );
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '待付款', icon: Icons.book),
  const Choice(title: '待发货', icon: Icons.card_membership),
  const Choice(title: '待收货', icon: Icons.card_travel),
  const Choice(title: '待评价', icon: Icons.comment),
  const Choice(title: '退款/售后', icon: Icons.satellite),
];
