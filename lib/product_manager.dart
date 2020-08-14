import 'package:flutter/material.dart';

import 'products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}){
    print('ProductManager Widget Constructor');
  }

  @override
  _ProductManagerState createState() {
    print('ProductManager Widget create state');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('ProductManager Widget initState');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('ProductManager Widget didUpdateWidget ');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product){
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('ProductManager Widget build');
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: ProductControl(_addProduct),
    ),
    Products(_products)
    ],);
  }
}
