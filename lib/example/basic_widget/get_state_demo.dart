import 'package:flutter/material.dart';

class GetStateTestDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetStateTestDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Center(
        child: Builder(builder: (context) {
          // 失败
          // Scaffold _scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
          // ScaffoldState _scaffoldState = Scaffold.of(context);
          // _scaffoldState.showSnackBar(
          //   SnackBar(content: Text('cesih'))
          // );

          return Text('test');
        }),
      ),
    );
  }
}