import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function removeLast;

  ProductManager(this.products, this.removeLast);
  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Products(products))
      ],
    );
  }
}
