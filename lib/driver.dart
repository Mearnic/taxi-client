import 'package:flutter/material.dart';
import 'package:taxi/tabs.dart';
import 'drawer.dart';

class Driver extends StatefulWidget {
  @override
  _DriverState createState() => _DriverState();
}

class _DriverState extends State<Driver>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        //移除抽屉菜单顶部默认留白
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      leading: const Icon(Icons.message),
                      title: Text(
                        "this.tabIndex",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
