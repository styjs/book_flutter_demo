import 'package:flutter/material.dart';

class HomePageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is home page'),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'CounterIndexDemo', arguments: '命名路由传参');
              },
              child: Text('Open Counter Page')
            )
          ]
        ),
      ),

      floatingActionButton: null,
    );
  }
}