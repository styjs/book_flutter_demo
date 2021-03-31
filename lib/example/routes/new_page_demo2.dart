import 'package:flutter/material.dart';

// 显示该页面
// 路由传参
class NewPageRouterDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Router Param'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Center(
        child: RaisedButton(
          onPressed: () async {
            // Navigator.push 韩慧一个Future对象 用于接收关闭下一个页面返回时所传递的数据
            var _result = await Navigator.push(
              context,
              MaterialPageRoute(
                // 通过命名参数为构造函数传参
                builder: (context) => TipRoute(text: 'This is warning...')
              )
            );

            print('_result $_result');
          },
          child: Text('Open new page'),
        ),
      ),
    );
  }
}

class TipRoute extends StatelessWidget {
  final String text;
  TipRoute({Key key, this.text}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('提示'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$text'),
            RaisedButton(
              child: Text('返回'),
              onPressed: () {
                Navigator.of(context).pop('返回值');
              }
            )
          ]
        ),
      ),
    );
  }
}