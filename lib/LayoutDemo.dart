import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  /**
   * 水平布局和垂直布局
   * */
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("LayoutDemo"),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              print("绿色");
            },
            child: new Text("绿色"),
            color: Colors.green,
          ),
          new Expanded(
              child: new RaisedButton(
            onPressed: () {
              print("红色");
            },
            child: new Text("红色"),
            color: Colors.red,
          )),
          new RaisedButton(
            onPressed: () {
              print("灰色");
            },
            child: new Text("灰色"),
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class LayoutDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('层叠定位布局'),
      ),
      body: new Center(
        child: new Stack(children: <Widget>[
          new Image.network('http://img2.cxtuku.com/00/13/12/s97783873391.jpg'),
          new Positioned(
            left: 35.0,
            right: 35.0,
            top: 45.0,
            child: new Text(
              'Whatever is worth doing is worth doing well. ๑•ิ.•ั๑',
              style: new TextStyle(
                fontSize: 20.0,
                fontFamily: 'serif',
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: "LayoutDemo",
//    home: new LayoutDemo(),
    home: new LayoutDemo2(),
  ));
}
