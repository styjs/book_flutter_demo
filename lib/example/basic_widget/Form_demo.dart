import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  // TextEditingController _unameController = TextEditingController();
  // TextEditingController _pwdController = TextEditingController();
  // GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          // key: _formKey,
          autovalidate: true,
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                // controller: _unameController,
                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  icon: Icon(Icons.person)
                ),
                validator: (v) {
                  return v
                    .trim()
                    .length > 0 ? null : "用户名不能为空";
                }
              ),
              TextFormField(
                // controller: _pwdController,
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  icon: Icon(Icons.lock)
                ),
                obscureText: true,
                validator: (v) {
                  return v
                    .trim()
                    .length > 5 ? null : '密码不能少于6位';
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      // child: RaisedButton(
                      //   padding: EdgeInsets.all(15.0),
                      //   child: Text('登录'),
                      //   color: Theme.of(context).primaryColor,
                      //   textColor: Colors.white,
                      //   onPressed: () {
                      //     if ((_formKey.currentState as FormState).validate()) {
                      //       debugPrint('true');
                      //     }
                      //   },
                      // )
                      child: Builder(
                        builder: (context) {
                          return RaisedButton(
                            child: Text('登录'),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              if (Form.of(context).validate()) {
                                debugPrint('tue');
                              } else {
                                debugPrint('false');
                              }
                            }
                          );
                        }
                      ),
                    )
                  ],
                ),
              )
            ]
          )
        ),
      ),
    );
  }
}