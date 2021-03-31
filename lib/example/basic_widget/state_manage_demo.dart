import 'package:flutter/material.dart';

class StateManageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManageDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Column(
        children: <Widget>[
          TapBoxA(),
          ParentWidget()
        ],
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  ParentWidget({Key key}):super(key: key);

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapB () {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => TapBoxB(
        active: _active,
        onTapBox: _handleTapB
      )
    );
  }
}

class TapBoxB extends StatelessWidget {
  TapBoxB({Key key, this.active, this.onTapBox});

  final bool active;
  final onTapBox;

  void _onTapBox () {
    onTapBox();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapBox,
      child: Container(
        width: 200.0,
        height: 200.0,
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        ),
        decoration: BoxDecoration(
          color: active ? Colors.red[700] : Colors.purple[700]
        ),
      )
    );
  }
}

class TapBoxA extends StatefulWidget {
  TapBoxA({Key key}):super(key: key);

  @override
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          )
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),
    );
  }
}