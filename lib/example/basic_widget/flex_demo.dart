import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlexDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            Text('123456')
          ]
        ),
      ),
    );
  }
}