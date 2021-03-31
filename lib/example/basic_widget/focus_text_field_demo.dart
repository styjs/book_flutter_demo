import 'package:flutter/material.dart';

class FocusTextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FocusTextFieldDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FocusTextFieldDemo1()
        ],
      ),
    );
  }
}

class FocusTextFieldDemo1 extends StatefulWidget {
  @override
  _FocusTextFieldDemo1State createState() => _FocusTextFieldDemo1State();
}

class _FocusTextFieldDemo1State extends State<FocusTextFieldDemo1> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    focusNode1.addListener(() {
      print(focusNode1.hasFocus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: false,
            focusNode: focusNode1,
            decoration: InputDecoration(
              labelText: "input1",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)
              )
            )
          ),
          TextField(
            focusNode: focusNode2,
            decoration: InputDecoration(
              labelText: "input2"
            )
          ),
          // Theme(
          //   data: Theme.of(context).copyWith(
          //     hintColor: Colors.grey[200],
          //     inputDecorationTheme: InputDecorationTheme(
          //       labelStyle: TextStyle(color: Colors.pink),
          //       hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0)
          //     )
          //   ),
          //   child: Column(
          //     children: <Widget>[
          //       TextField(
          //         decoration: InputDecoration(
          //           labelText: "用户名",
          //           hintText: "用户名或邮箱",
          //           prefixIcon: Icon(Icons.person)
          //         )
          //       ),
          //       TextField(
          //         decoration: InputDecoration(
          //           prefixIcon: Icon(Icons.lock),
          //           labelText: "密码",
          //           hintText: "您的登录密码",
          //           hintStyle: TextStyle(color: Colors.green, fontSize: 13.0)
          //         )
          //       )
          //     ],
          //   ),
          // ),
          Builder(builder: (ctx) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("移动焦点"),
                  onPressed: () {
                    if (null == focusScopeNode) {
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(focusNode2);
                  }
                ),
                RaisedButton(
                  child: Text("隐藏键盘"),
                  onPressed: () {
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  }
                )
              ]
            );
          })
        ],
      ),
    );
  }
}