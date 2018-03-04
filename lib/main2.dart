import 'package:flutter/material.dart';
import 'ListViewItem.dart';

class ShopListView extends StatefulWidget {
  ShopListView({Key key, this.products}) : super(key: key);
  List<Product> products;

  @override
  ShopListViewState createState() => new ShopListViewState();
}

class ShopListViewState extends State<ShopListView> {
  Set<Product> shopCar = new Set();

  void handCarChanged(Product p, bool b) {
    setState(() {
      if (b) {
        shopCar.add(p);
      } else {
        shopCar.remove(p);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('购物清单'),
      ),
      body: new ListView(
        children: widget.products.map((Product p) {
          return new ShoppingListItem(
              product: p,
              inCart: shopCar.contains(p),
              onCartChanged: handCarChanged);
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: "ShopCar",
    home: new ShopListView(
      products: list,
    ),
  ));
}

final List<Product> list = <Product>[
  new Product(productName: '鸡蛋'),
  new Product(productName: '面粉'),
  new Product(productName: '巧克力脆片'),
];
