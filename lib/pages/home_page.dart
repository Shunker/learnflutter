import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text("首页"),
        ),
        body: ListView(
          children: <Widget>[new SwiperDiy(), new NavList(), new BannerDiy(),new CardDiy()],
        ));
  }
}

class SwiperDiy extends StatelessWidget {
  final List swiperDataList = [
    'https://img.alicdn.com/tfs/TB1lV_hScfpK1RjSZFOXXa6nFXa-520-280.jpg_q90_.webp',
    'https://img.alicdn.com/simba/img/TB1i0rMzbrpK1RjSZTESuwWAVXa.jpg',
    'https://img.alicdn.com/simba/img/TB1fY5PLkvoK1RjSZFNSuwxMVXa.jpg',
    'https://img.alicdn.com/simba/img/TB1LjUfflTH8KJjy0FiSuwRsXXa.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network("${swiperDataList[index]}",
              fit: BoxFit.cover);
        },
        itemCount: swiperDataList.length,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}

class CardDiy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Image.network('https://img.alicdn.com/tps/TB1LlobOVXXXXc_XXXXXXXXXXXX-580-400.jpg_640x640.jpg', fit: BoxFit.fitHeight,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Image.network('https://img.alicdn.com/tps/TB14r24OVXXXXXWXFXXXXXXXXXX-280-190.jpg_420x280.jpg',height:88.0,fit: BoxFit.fitHeight,),
              ),
              Expanded(
                child: Image.network('https://img.alicdn.com/tps/TB1adMnOVXXXXXaXXXXXXXXXXXX-280-190.jpg_420x280.jpg',height:88.0,fit: BoxFit.fitHeight,),
              )
            ],
          )
        ],
      )
    );
  }
}

class BannerDiy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
        //height: 260.0,
        child: GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 1.7,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '淘抢购',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: new Image.network(
                            'https://img.alicdn.com/imgextra/i3/836552381/TB2lr2TaqLN8KJjSZFGXXbjrVXa_!!836552381-0-daren.jpg_180x180xzq90.jpg_.webp',
                            fit: BoxFit.cover,
                            scale: 1.7,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                         child:new Image.network(
                          'https://img.alicdn.com/imgextra/i1/2348167658/O1CN0126RPXWNIblZq1XW_!!2348167658-0-daren.jpg_180x180xzq90.jpg_.webp',
                          fit: BoxFit.cover,
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '淘抢购',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: new Image.network(
                            'https://img.alicdn.com/imgextra/i3/836552381/TB2lr2TaqLN8KJjSZFGXXbjrVXa_!!836552381-0-daren.jpg_180x180xzq90.jpg_.webp',
                            fit: BoxFit.cover,
                            scale: 1.7,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                         child:new Image.network(
                          'https://img.alicdn.com/imgextra/i1/2348167658/O1CN0126RPXWNIblZq1XW_!!2348167658-0-daren.jpg_180x180xzq90.jpg_.webp',
                          fit: BoxFit.cover,
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '淘抢购',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: new Image.network(
                            'https://img.alicdn.com/imgextra/i3/836552381/TB2lr2TaqLN8KJjSZFGXXbjrVXa_!!836552381-0-daren.jpg_180x180xzq90.jpg_.webp',
                            fit: BoxFit.cover,
                            scale: 1.7,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                         child:new Image.network(
                          'https://img.alicdn.com/imgextra/i1/2348167658/O1CN0126RPXWNIblZq1XW_!!2348167658-0-daren.jpg_180x180xzq90.jpg_.webp',
                          fit: BoxFit.cover,
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '淘抢购',
                      style: TextStyle(color: Colors.red,fontSize: 20.0,),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: new Image.network(
                          'https://img.alicdn.com/imgextra/i3/836552381/TB2lr2TaqLN8KJjSZFGXXbjrVXa_!!836552381-0-daren.jpg_180x180xzq90.jpg_.webp',
                          fit: BoxFit.cover,
                          scale: 1.7,
                        ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                         child:new Image.network(
                          'https://img.alicdn.com/imgextra/i1/2348167658/O1CN0126RPXWNIblZq1XW_!!2348167658-0-daren.jpg_180x180xzq90.jpg_.webp',
                          fit: BoxFit.cover,
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class NavList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 200.0,
        color: Colors.grey[200],
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 5,
          //childAspectRatio:1.0,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.phone_android,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.terrain,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.star_half,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.settings_remote,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.recent_actors,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.play_for_work,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.pie_chart,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.picture_in_picture,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Container(
              margin: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Icon(
                Icons.picture_as_pdf,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
