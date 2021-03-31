import 'package:book_demo/example/basic_widget/Form_demo.dart';
import 'package:book_demo/example/basic_widget/Image_demo.dart';
import 'package:book_demo/example/basic_widget/flex_demo.dart';
import 'package:book_demo/example/basic_widget/focus_text_field_demo.dart';
import 'package:book_demo/example/basic_widget/get_state_demo.dart';
import 'package:book_demo/example/basic_widget/mix_state_manage_demo.dart';
import 'package:book_demo/example/basic_widget/progress_indicator_demo.dart';
import 'package:book_demo/example/basic_widget/raised_button_demo.dart';
import 'package:book_demo/example/basic_widget/row_and_column_demo.dart';
import 'package:book_demo/example/basic_widget/state_ful_widget_demo.dart';
import 'package:book_demo/example/basic_widget/state_manage_demo.dart';
import 'package:book_demo/example/basic_widget/stateless_widget_demo.dart';
import 'package:book_demo/example/basic_widget/swith.dart';
import 'package:book_demo/example/basic_widget/text_demo.dart';
import 'package:book_demo/example/basic_widget/text_field_demo.dart';
import 'package:book_demo/example/home/home_page_demo.dart';
import 'package:flutter/cupertino.dart';
import '../home/home_page_demo.dart';

import '../counter/index_demo.dart';
Map<String, WidgetBuilder> generateRoutes (context) {
  return {
    '/Flex': (context) => FlexDemo(),
    '/RowAndColumn': (context) => RowAndColumnDemo(),
    '/Text': (context) => TextDemo(),
    '/MixStateManage': (context) => MixStateManageDemo(),
    '/StateManage': (context) => StateManageDemo(),
    '/GetStateTest': (context) => GetStateTestDemo(),
    '/StatefulWidget': (context) => StatefulWidgetDemo(),
    '/StatelessWidget': (context) => StatelessWidgetScaffold(),
    // '/StatelessWidget': (context) => StatelessWidgetDemo(text: 'hello world',),
    '/RaisedButton': (context) => RaisedButtonDemo(),
    '/Image': (context) => ImageDemo(),
    '/CheckBox': (context) => CheckBoxDemo(),
    '/Switch': (context) => SwitchDemo(),
    '/Form': (context) => FormDemo(),
    '/FocusTextField': (context) => FocusTextFieldDemo(),
    '/TextField': (context) => TextFieldDemo(),
    '/ProgressIndicator': (context) => ProgressIndicator(),
    '/CounterIndexDemo': (context) => CounterDemo(title: 'CounterDemo'),
    '/': (context) => HomePageDemo()
  };
}