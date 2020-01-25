import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(
                  context, '/product/' + index.toString()).then((bool value) {
                  if (value) {
                    deleteProduct(index);
                  }
                }),
              )
            ],
          )
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
