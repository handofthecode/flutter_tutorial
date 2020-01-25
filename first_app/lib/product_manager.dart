import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;
  final Function removeLast;

  ProductManager(this.products, this.addProduct, this.deleteProduct, this.removeLast);
  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: ProductControl(addProduct, removeLast),
        ),
        Expanded(child: Products(products, deleteProduct: deleteProduct))
      ],
    );
  }
}
