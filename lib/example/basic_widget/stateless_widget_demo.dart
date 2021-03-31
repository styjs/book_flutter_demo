import 'package:flutter/material.dart';

class StatelessWidgetScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessWidgetScaffold'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Container(
        child: StatelessWidgetDemo(text: 'Scaffold'),
      ),
    );
  }
}

class StatelessWidgetDemo extends StatelessWidget {
  // @required 标注必要参数
  // 第一个参数通常是key
  // child或者children通常被放在参数列表的最后
  // widget属性应尽可能地被声明为final
  const StatelessWidgetDemo({Key key, @required this.text, this.backgroundColor: Colors.grey}):super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Container(
      //   color: backgroundColor,
      //   child: Text(text),
      // ),
      child: Builder(builder: (context) {
        Scaffold scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
        debugPrint(scaffold.toStringDeep());
        return (scaffold.appBar as AppBar).title;
      }),
    );
  }
}