import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String mid;
  DetailPage({Key key, this.mid}) : super(key: key);
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String mid;
  bool showAll=false;
  var movieDetail;
  @override
  void initState() {
    mid = widget.mid;
    _getData(widget.mid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (movieDetail != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('详情'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: new Stack(
                children: <Widget>[
                  Container(
                    width: 500.0,
                    height: 260.0,
                    child: Image.network(
                      movieDetail['images']['large'],
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  color: Colors.lightBlue[100].withOpacity(0.7),
                  padding: EdgeInsets.all(20.0),
                  height: 260.0,
                  child: Row(
                    children: <Widget>[
                      Image.network(movieDetail['images']['small']),
                      Expanded(
                        flex: 1,
                       child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        alignment: Alignment.topLeft,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(movieDetail['title'],style: TextStyle(fontSize: 20.0,color: Colors.white),),
                            Text(movieDetail['original_title'],style: TextStyle(fontSize: 16.0,color: Colors.white),textAlign: TextAlign.left,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: movieDetail['rating']['average']>1.5? Colors.orange:Colors.grey,),
                                Icon(Icons.star, color: movieDetail['rating']['average']>3.5? Colors.orange:Colors.grey,),
                                Icon(Icons.star, color: movieDetail['rating']['average']>5.5? Colors.orange:Colors.grey,),
                                Icon(Icons.star, color: movieDetail['rating']['average']>7.5? Colors.orange:Colors.grey,),
                                Icon(Icons.star, color: movieDetail['rating']['average']>9.5? Colors.orange:Colors.grey,),
                                Text('${movieDetail['rating']['average']}',style: TextStyle(fontSize: 18.0),),                               
                              ],
                              
                            ),
                            Text('${movieDetail['ratings_count']}人评价',softWrap: true,),
                            Text('${movieDetail['genres'].join('、')}'),
                            Text('${movieDetail['year']}'),
                          ],
                        ),
                        )
                      )
                      )
                    ],
                  ),
                ),
              ),
            )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 2.0),
              child: Text('${movieDetail['summary']}', style:TextStyle(fontSize: 16.0),maxLines: showAll?20:3,),
            ),
            IconButton(icon: Icon(!showAll?Icons.expand_more:Icons.expand_less),iconSize: 30.0,onPressed: ()=>{
              setState((){
                showAll=!showAll;
              })
            },),
            Text('主演',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
            Container(
              
              height: 190.0,
              child: ListView.builder(
                shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount:movieDetail['casts'].length ,
              itemBuilder: (BuildContext context,int index)=>SizedBox(
                width: 100.0,
                child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network(movieDetail['casts'][index]['avatars']['small'],width: 100.0,),
                    Expanded(child: Text('${movieDetail['casts'][index]['name']}',style: TextStyle(fontSize: 16.0),textAlign: TextAlign.center,),)
                  ],
                ),
              ),
              )
            ),
            )
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('数据加载中'),
        ),
        body: Center(
          child: CupertinoActivityIndicator(),
        ),
      );
    }
  }

  void _getData(id) async {
    try {
      var httpClient = new HttpClient();
      var httpClientRequest = await httpClient
          .getUrl(Uri.parse("https://api.douban.com/v2/movie/subject/$id"));
      var httpClientResponse = await httpClientRequest.close();
      var jsonResult = await httpClientResponse.transform(utf8.decoder).join();
      var result = json.decode(jsonResult);
      setState(() {
        movieDetail = result;
      });
      httpClient.close();
    } catch (e) {
      print("请求失败:$e");
    } finally {}
  }
}
