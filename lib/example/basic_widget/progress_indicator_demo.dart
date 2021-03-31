import 'package:flutter/material.dart';

class ProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProgressIndicator'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LinearProgressIndicatorDemo(),
          CircularProgressIndicatorDemo(),
          SizedBoxLinearProgressIndicatorDemo(),
          LinearProgressIndicatorAnimationColorDemo()
        ],
      ),
    );
  }
}

class LinearProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: LinearProgressIndicator(
        // value: 0.5,
        value: null,
        backgroundColor: Colors.blueGrey,
        valueColor: AlwaysStoppedAnimation(Colors.deepOrange),
        minHeight: 100.0
      ),
    );
  }
}

class CircularProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: CircularProgressIndicator(
        value: 0.5,
        backgroundColor: Colors.tealAccent,
        valueColor: AlwaysStoppedAnimation(Colors.red),
        strokeWidth: 16.0,
      ),
    );
  }
}

class SizedBoxLinearProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height: 3.0,
        child: LinearProgressIndicator(
          value: 0.78,
          backgroundColor: Colors.blue,
          valueColor: AlwaysStoppedAnimation(Colors.yellow)
        )
      ),
    );
  }
}

class LinearProgressIndicatorAnimationColorDemo extends StatefulWidget {
  @override
  _LinearProgressIndicatorAnimationColorDemoState createState() => _LinearProgressIndicatorAnimationColorDemoState();
}

class _LinearProgressIndicatorAnimationColorDemoState extends State<LinearProgressIndicatorAnimationColorDemo> with SingleTickerProviderStateMixin{
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(value: 0.0, upperBound: 0.7, vsync: this, duration: Duration(seconds: 3));

    _animationController.forward();

    _animationController.addListener(() => setState(() {}));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: LinearProgressIndicator(
              value: _animationController.value,
              valueColor: ColorTween(begin: Colors.grey, end: Colors.blueGrey).animate(_animationController),
              backgroundColor: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}