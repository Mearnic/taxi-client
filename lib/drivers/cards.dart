import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//              child: Column(
//                children: <Widget>[
////                  Text(_words[index], style: TextStyle(color: Colors.white),
//                  RaisedButton.icon(
//                    icon: Icon(Icons.send),
//                    label: Text("发送"), onPressed: () {},
//                  ),
//                  OutlineButton.icon(
//                    icon: Icon(Icons.add),
//                    label: Text("添加"), onPressed: () {},
//                  ),
//                  FlatButton.icon(
//                    icon: Icon(Icons.info),
//                    label: Text("详情"), onPressed: () {},
//                  ),
////                  Text(_words[index],textAlign: TextAlign.start,),
//                ],
//              ),
////
//              ),
class FlexLayoutTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Flex的两个子widget按1：2来占据水平空间  
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Text("Mearnic",textAlign: TextAlign.start,),
            ),
            Expanded(
              flex: 4,
              child: Text("信用",textAlign: TextAlign.start,),
            ),
            Expanded(
              flex: 3,
              child: FlatButton.icon(
                icon: Icon(Icons.info),
                label: Text("接单"), onPressed: () {},
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SizedBox(
            height: 150.0,
            //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间  
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 40.0,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 40.0,
                    color: Colors.yellow,
                  ),
                ),
//                Spacer(
//                  flex: 1,
//                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}