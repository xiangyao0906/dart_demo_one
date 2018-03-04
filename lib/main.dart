import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomeView(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomeView extends StatefulWidget {
  final String title;

  @override
  HomeViewStates createState() => new HomeViewStates();

  HomeView({this.title});
}

class HomeViewStates extends State<HomeView> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    void onClick() {
      /**
       * setState（）会调用build 方法重新绘制UI
       * */
      setState(() {
        /**
         * 点击事件
         * */
        a++;
      });
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          /**
           * Y轴对齐方式  start center end
           * */
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("你累积点了$a次了"),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: onClick,
        child: new Icon(Icons.add),
      ),
    );
  }
}
