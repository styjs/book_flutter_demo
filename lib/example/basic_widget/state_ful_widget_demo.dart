import 'package:flutter/material.dart';

class StatefulWidgetDemo extends StatefulWidget {
  StatefulWidgetDemo({Key key, this.initValue: 0}):super(key: key);

  final int initValue;

  @override
  _StatefulWidgetDemoState createState() => _StatefulWidgetDemoState();
}

class _StatefulWidgetDemoState extends State<StatefulWidgetDemo> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    _counter = widget.initValue;
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('$_counter'),
          onPressed: () {
            setState(() => ++_counter);
          }
        )
      ),
    );
  }

  @override
  void didUpdateWidget(covariant StatefulWidgetDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactive');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}