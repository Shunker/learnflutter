import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import './detail_page.dart';

class CartPage extends StatefulWidget {
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final String mid='';
  List hotMovie = [];
  var col = 2;

  @override
  void initState() {
    _getData();
    super.initState();
  }

  void _getData() async {
    try {
      var httpClient = new HttpClient();
      var httpClientRequest = await httpClient.getUrl(Uri.parse(
          "http://api.douban.com/v2/movie/nowplaying?apikey=0df993c66c0c636e29ecbb5344252a4a"));
      var httpClientResponse = await httpClientRequest.close();
      var jsonResult = await httpClientResponse.transform(utf8.decoder).join();
      var result = json.decode(jsonResult);
      setState(() {
        hotMovie = result['entries'];
      });
      httpClient.close();
    } catch (e) {
      print("请求失败:$e");
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text("购物车"),
          trailing: IconButton(
            icon: Icon(Icons.tune),
            onPressed: () => {
                  col == 2
                      ? setState(() {
                          col = 3;
                        })
                      : setState(() {
                          col = 2;
                        })
                },
          ),
        ),
        body: new ListView(
          shrinkWrap: true,
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              physics: new NeverScrollableScrollPhysics(),
              //水平子Widget之间间距
              crossAxisSpacing: 10.0,
              //垂直子Widget之间间距
              mainAxisSpacing: 30.0,
              //GridView内边距
              padding: EdgeInsets.all(10.0),
              //一行的Widget数量
              crossAxisCount: col,
              //子Widget宽高比例
              childAspectRatio: 0.7,
              //子Widget列表
              children: getWidgetList(),
            ),
          ],
        ));
  }

  List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 30; i++) {
      list.add(i.toString());
    }
    return list;
  }

  List<Widget> getWidgetList({Map item}) {
    return hotMovie
        .map((item) => GestureDetector(
              child: getItemContainer(item),
              onTap: () => {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) {
                        return new DetailPage(mid: item['id'],);
                      },
                    ))
                  },
            ))
        .toList();
  }

  Widget getItemContainer(Map item) {
    return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        //shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
        color: Color(0xFFcccccc),
        child: new Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            ConstrainedBox(
              child: Image.network(item['images']['small'], fit: BoxFit.cover),
              constraints: BoxConstraints.expand(),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 42.0),
              child: Container(
                color: Color(0x88000000),
                //width: 150.0,
                alignment: Alignment.center,
                //height: 42.0,
                child: Text(
                  item['title'],
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ));
  }
}
