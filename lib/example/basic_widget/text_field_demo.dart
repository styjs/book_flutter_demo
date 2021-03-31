import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFieldDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFieldDemo2(),
            TextFieldDemo1()
          ]
        ),
      ),
    );
  }
}

class TextFieldDemo2 extends StatefulWidget {
  @override
  _TextFieldDemo2State createState() => _TextFieldDemo2State();
}

class _TextFieldDemo2State extends State<TextFieldDemo2> {
  TextEditingController _unameController = TextEditingController();


  @override
  void initState() {
    super.initState();

    // 设置默认值
    _unameController.text = "hello world";
    _unameController.selection = TextSelection(
      baseOffset: 2,
      extentOffset: _unameController.text.length
    );

    _unameController.addListener(() {
      print(_unameController.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        autofocus: true,
        controller: _unameController,
        decoration: InputDecoration(
          labelText: "测试A",
          hintText: "这是测试输入框",
          prefixIcon: Icon(Icons.text_snippet)
        ),
      ),
    );
  }
}

class TextFieldDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          textInputAction: TextInputAction.go,
          decoration: InputDecoration(
            labelText: "用户名",
            hintText: "用户名或邮箱",
            prefixIcon: Icon(Icons.person),
          ),
          onChanged: (inputstr) {
            print(inputstr);
          },
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "密码",
            hintText: "你的登录密码",
            prefixIcon: Icon(Icons.lock)
          ),
        )
      ],
    );
  }
}
