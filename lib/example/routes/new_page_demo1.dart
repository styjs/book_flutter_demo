import 'package:flutter/material.dart';

/// 导航会维护一个路由栈 路由入栈push操作对应与打开一个新的页面
///                     路由出栈pop操作对应于页面关闭操作

class NewPageRouteDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 页面脚手架
    return Scaffold(
      // 导航栏
      appBar: AppBar(
        title: Text('New Route'),
      ),

      // body
      body: Center(
        child: Text('This is a new page!')
      ),

      // floatingActionButton
      floatingActionButton: null,
    );
  }
}