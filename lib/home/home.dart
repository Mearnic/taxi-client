import 'package:flutter/material.dart';
import 'package:taxi/home/enums.dart';
import 'package:taxi/home/tabs.dart';
import 'user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  TabController _tabController; //需要定义一个Controller
  List tabs = [TabType.TAXI, TabType.HOME];

  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      switch (_tabController.index) {
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
//        automaticallyImplyLeading: false,
        elevation: 0,///设置AppBar透明，必须设置为0
        backgroundColor: Colors.transparent,
        //导航栏
        title: Text("列表页"),
//        bottom: TabBar(
//            //生成Tab菜单
//            controller: _tabController,
//            tabs: tabs.map((e) => Tab(text: e)).toList()),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.people, color: Colors.white), //自定义图标
            onPressed: () {
              // 打开抽屉菜单
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      drawer: new UserInfo(),
      //抽屉
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((type) {
          //创建3个Tab页
          return new Tabs(
            tabType: type,
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.teal,
          shape: CircularNotchedRectangle(),
          // 底部导航栏打一个圆形的洞
          child: Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.local_taxi,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _onItemTapped(0);
                  },
                ),
                Container(child: SizedBox()), //中间位置空出
                IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _onItemTapped(1);
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
            ),
          )),
      floatingActionButton: FloatingActionButton(
        //悬浮按钮
        child: Icon(Icons.mic_none),
        onPressed: _onAdd,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _tabController.index = index;
    });
  }

  void _onAdd() {}
}
