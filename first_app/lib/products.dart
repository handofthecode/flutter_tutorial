import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {}

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

Widget _buildProductList() {
  Widget result;
  if (products.length > 0) {
    result = ListView.builder(
    itemBuilder: _buildProductItem,
    itemCount: products.length,
    );
  } else {
    result = Center(child: Text('No Products found. Please add some.'));
  }
  return result;
}

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
