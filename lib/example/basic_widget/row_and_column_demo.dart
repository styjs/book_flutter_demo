import 'package:flutter/material.dart';

class RowAndColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RowAndColumnDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                  // child: Column(
                  //   mainAxisSize: MainAxisSize.min,
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[
                  //     Text('Hello World'),
                  //     Text('I am Jack')
                  //   ]
                  // )
                  // child: Text('打他'),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        child: Text('data123'),
                        color: Colors.blue,
                      )
                    ]
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}