import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ImageView",
    home: new LocalImageView(),
  ));
}

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ImageViewDemo"),
      ),
      body: new Center(
        child: new Image.network(
          'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
          scale: 2.0,
        ),
      ),
    );
  }
}

class LocalImageView extends StatelessWidget {
  /**
   * 本地文件需要在public.yaml中声明
   * */
  @override
  Widget build(BuildContext context) {
    return new DecoratedBox(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('images/abc.png'),
        ),
      ),
    );
  }
}
