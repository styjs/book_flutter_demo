import 'package:flutter/material.dart';
// import 'example/counter/index_demo.dart';
// import 'example/routes/new_page_demo2.dart';
import './example/routes/routing_table_routes.dart';

/// 应用入口
void main() {
  // runApp 启动flutter应用
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp 用于设置一个应用的名称、主题、语言、首页和路由列表
    return MaterialApp(
      title: 'Demo1',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      // home: CounterDemo(title: 'CounterDemo'),
      // home: NewPageRouterDemo2(),
      initialRoute: '/Flex',
      routes: generateRoutes(context),
      debugShowCheckedModeBanner: false,
    );
  }
}