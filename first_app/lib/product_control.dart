import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  final Function removeLast;

  ProductControl(this.addProduct, this.removeLast);

  Widget build(BuildContext context) {
    return Center(
        child: new ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            addProduct({'title': 'Chocolate', 'image': 'assets/food.jpg'});
          },
          child: Text('Add Product'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            removeLast();
          },
          child: Text('Remove Last Product'),
        )
    ]));
  }
}
