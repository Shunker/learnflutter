import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CategoryPage extends StatefulWidget {
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  var _currentIndex = 0;
  var _currentPage;
  @override
  void initState() {
    _currentPage = xxx[_currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text("分类"),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100.0,
                decoration: BoxDecoration(),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context,int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                          _currentPage = xxx[_currentIndex];
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        color: _currentIndex ==index?Colors.grey[200]:Colors.white,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.text_fields),
                            Text('菜单${index + 1}',)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: _currentPage,
              )
            ],
          ),
        ));
  }

  final List xxx = [
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.purple,
    ),
  ];
}
