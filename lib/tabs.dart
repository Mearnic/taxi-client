import 'package:flutter/material.dart';

import 'drawer.dart';


class Tabs extends StatelessWidget {

  const Tabs({Key key, this.tabIndex,}) : super(key: key);

  final String tabIndex;

  @override
  Widget build(BuildContext context) {
    return UserInfo();
  }
}