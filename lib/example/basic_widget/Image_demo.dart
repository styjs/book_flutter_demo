import 'package:flutter/material.dart';
import '../common/fonts.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    icons += "\ue914";
    icons += "\ue000";
    icons += "\ue90D";

    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: ListView(
        children: <Widget>[
          Icon(MyIconsTest01.colorIcon, color: Colors.purple),
          Icon(MyIconsTest01.colorIcon1, color: Colors.purple),
          Icon(IconData(0xe60f, fontFamily: 'iconfont', matchTextDirection: true)),
          Icon(IconData(0xe733, fontFamily: 'iconfont', matchTextDirection: true)),
          Text("\ue60f", style: TextStyle(fontFamily: 'iconfont', color: Colors.blue, fontSize: 32.0)),
          Text("\ue733", style: TextStyle(fontFamily: 'iconfont', color: Colors.blue, fontSize: 32.0)),
          Text(
              icons,
              style: TextStyle(
                fontFamily: "MaterialIcons",
                fontSize: 24.0,
                color: Colors.green
              ),
            ),
          Image(
            image: AssetImage(
              "images/test02.png"
            ),
            width: 100.0,
            height: 200.0,
            fit: BoxFit.none,
            // 可以理解成PS中的蒙版
            color: Colors.red,
            colorBlendMode: BlendMode.colorBurn,
          ),
          Image.asset("images/test03.png"),
          Image.network("https://static.xianglinsen.com/b775de4d4078c1996a3c40e5871a96d60.5658877501642778"),
          Image(
            image: NetworkImage("https://static.xianglinsen.com/8c23f4a2b2baf68c6c6c0205426966290.302538297113482"),
            height: 200.0,
          )
        ]
      ),
    );
  }
}