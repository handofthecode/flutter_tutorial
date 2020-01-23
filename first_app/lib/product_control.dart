import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  final Function removeProduct;

  ProductControl(this.addProduct, this.removeProduct);

  Widget build(BuildContext context) {
    return Center(
        child: new ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            addProduct('Sweets');
          },
          child: Text('Add Product'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            removeProduct();
          },
          child: Text('Remove Product'),
        )
    ]));
  }
}
