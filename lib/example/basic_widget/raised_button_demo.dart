import 'package:flutter/material.dart';

class RaisedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RaisedButtonDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('RaisedButton'),
              onPressed: () {
                print('RaisedButton');
              }
            ),
            FlatButton(
              child: Text("FlatButton"),
              onPressed: () {
                print('FlatButton');
              }
            ),
            OutlineButton(
              child: Text("OutlineButton"),
              onPressed: () {
                print('OutlineButton');
              }
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {
                print('IconButton');
              }
            ),
            RaisedButton.icon(
              icon: Icon(Icons.thumb_down),
              label: Text('点赞'),
              onPressed: () {
                print('RaisedButton');
              }
            ),
            RaisedButton(
              elevation: 0.0,
              highlightElevation: 0.0,
              child: Text("自定义按钮"),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {
                print('自定义按钮');
              }
            )
          ]
        ),
      ),
    );
  }
}