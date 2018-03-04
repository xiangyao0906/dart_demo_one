import 'package:flutter/material.dart';

class Product {
  String productName;

  Product({this.productName});
}

/**
 * typedef 关键字用于定义接口
 *
 * */
typedef void CartChangedCallback(Product product, bool boolean);

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },
      /**
       * A widget to display before the title.
       */
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.productName[0]),
      ),
      title: new Text(product.productName, style: _getTextStyle(context)),
    );
  }

  /**
   * 构造方法
   * */
  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : product = product,
        super(key: new ObjectKey(product));

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;
    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }
}
