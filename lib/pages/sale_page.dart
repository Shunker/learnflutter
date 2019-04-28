import 'package:flutter/material.dart';

class SalePage extends StatefulWidget {
  final String choicetitle;
  SalePage({Key key, this.choicetitle}) : super(key: key);
  @override
  _SalePageState createState() => _SalePageState();
}

class _SalePageState extends State<SalePage>
    with SingleTickerProviderStateMixin {
  String _choicetitle;
  TabController _tabController;
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: '待付款',
    ),
    Tab(
      text: '待发货',
    ),
    Tab(
      text: '待收货',
    ),
    Tab(
      text: '待评价',
    ),
    Tab(
      text: '退款/售后',
    )
  ];
 getCurrent(){
  for (var i = 0; i < myTabs.length; i++) {
    if (myTabs[i].text==widget.choicetitle) {
      return i;
    }
  }
  }
  @override
  void initState() {
    _choicetitle = widget.choicetitle;
    _tabController =
        TabController(
          vsync: this,
          length: myTabs.length,
          initialIndex: getCurrent()
        );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的订单'),
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.blue,
            tabs: myTabs),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          return Center(child: Text(tab.text));
        }).toList(),
      ),
    );
  }
}
