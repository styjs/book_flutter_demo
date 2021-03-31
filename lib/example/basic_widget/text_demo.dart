import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: ListView(
        children: <Widget>[
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('hello world'),
                Text('I am Jack'),
                Text(
                  'I am Jack',
                  style: TextStyle(
                    inherit: false,
                    color: Colors.yellow
                  ),
                )
              ],
            )
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Home:'),

                TextSpan(
                  text: 'https://flutterchina.club',
                  style: TextStyle(
                    color: Colors.blue
                  ),

                  // 点击链接后的一个处理器
                  // recognizer:
                )
              ]
            )
          ),
          Text(
            'Hello World',
            textAlign: TextAlign.left
          ),
          Text(
            'Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, ',
            maxLines: 1,
            overflow: TextOverflow.ellipsis
          ),
          Text(
            'Hello World ',
            maxLines: 1,
            textScaleFactor: 1.5
          ),
        ],
      ),
    );
  }
}