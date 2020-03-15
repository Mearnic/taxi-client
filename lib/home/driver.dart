import 'package:flutter/material.dart';
import 'package:taxi/drivers/waits.dart';

class Drivers extends StatefulWidget {
  @override
  _DriversState createState() => _DriversState();
}

class _DriversState extends State<Drivers> with SingleTickerProviderStateMixin {
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
        child: Container(color: Colors.teal[300], child: Waits()),
      ),
    );
  }
}
