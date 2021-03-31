import 'package:book_demo/example/routes/new_page_demo1.dart';
import 'package:flutter/material.dart';

/// statefulWidget类本身是不会变化的 但是State类中只有的状态在Widget生命周期中则可能会发生变化
class CounterDemo extends StatefulWidget {
  CounterDemo({Key key, this.title}):super(key: key);
  final String title;

  @override
  _CounterDemoState createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  int _counter = 0;

  void _onPressedButton () {
    // 通知flutter框架状态发生了变化 flutter收到通知之后 执行build方法根据新的状态构建页面
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _result = ModalRoute.of(context).settings.arguments;
    print('_result $_result');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pused the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              onPressed: () {
                /// 将给定的路由入栈 返回值是一个Future对象，用于接收新路由出栈时的返回数据
                Navigator.push(context,
                  /// materialPageRoute继承自PageRoute表示占据整个路由空间的一个模态路由页面
                  MaterialPageRoute(
                    /// WidgetBuilder类型的回调函数，构建路由页面的具体内容，返回一个Widget
                    builder: (context) => NewPageRouteDemo1()
                  )
                );
              },
              child: Text('Open new page')
            )
          ]
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onPressedButton,
        child: Icon(Icons.add),
      ),
    );
  }
}