import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  ProductPage(this.title, this.description, this.price, this.imageUrl);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('This action cannot be undone!'),
            actions: <Widget>[
              FlatButton(
                  child: Text('DISCARD'),
                  onPressed: () {
                    Navigator.pop(context, false);
                  }),
              FlatButton(
                child: Text('CONTINUE'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(price.toString()),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(description),
              
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Delete'),
                onPressed: () => _showWarningDialog(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
