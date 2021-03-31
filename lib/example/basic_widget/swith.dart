import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchSelected = true;

  @override
  void initState() {
    super.initState();
    _switchSelected = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
        elevation: 0.0,
      ),

      body: Center(
        child: Switch(
          value: _switchSelected,
          onChanged: (value){
            setState(() {
              _switchSelected = value;
            });
          },
        ),
      ),
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _CheckBoxSelected = true;

  @override
  void initState() {
    super.initState();
    _CheckBoxSelected = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        elevation: 0.0,
      ),

      body: Center(
        child: Checkbox(
          value: _CheckBoxSelected,
          onChanged: (value){
            setState(() {
              _CheckBoxSelected = value;
            });
          },
        ),
      ),
    );
  }
}