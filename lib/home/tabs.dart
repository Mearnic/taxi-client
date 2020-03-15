import 'package:flutter/material.dart';

import 'community.dart';
import 'driver.dart';
import 'enums.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key key,
    this.tabType,
  }) : super(key: key);

  final TabType tabType;

  @override
  Widget build(BuildContext context) {
    switch (this.tabType) {
      case TabType.TAXI:
        return Drivers();
      case TabType.HOME:
        return Community();
    }
    return ErrorWidget("");
  }
}
