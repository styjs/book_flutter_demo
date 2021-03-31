import 'dart:io';

import 'package:flutter/material.dart';

class MixStateManageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MixStateManageDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Container(
        child: ParentWidget(),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapBoxC(
      active: _active,
      onChanged: _handleTapboxChanged
    );
  }
}

class TapBoxC extends StatefulWidget {
  TapBoxC({Key key, this.active, @required this.onChanged});

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  _TapBoxCState createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    print('_handleTapDown');
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    print('_handleTapUp');
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel () {
    print('_handleTapCancel');
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap () {
    print('_handleTap');
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      onTapUp: _handleTapUp,

      child: Container(
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          )
        ),

        width: 200.0,
        height: 200.0,

        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[700],
          border: _highlight ? Border.all(color: Colors.teal[700], width: 10.0) : null
        ),
      ),
    );
  }
}