import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'hello flutter',
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('welcome to flutter world'),
  //       ),
  //       body: Center(
  //         child: Container(
  //           child: Image.network(
  //             'https://n.sinaimg.cn/news/crawl/116/w550h366/20181214/wK02-hqackac8387017.jpg',
  //             color: Colors.greenAccent,
  //             colorBlendMode: BlendMode.color,
  //             repeat: ImageRepeat.repeatY,
  //           ),
  //           width: 500.0,
  //           height: 400.0,
  //           color: Colors.lightBlue,
  //         ),
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 40.0,
          title: new Text('come in '),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint('搜索'),
            )
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new Image.network(
                'http://dart.goodev.org/assets/covers/learning-dart-a03a3eca556e403d8a908cedd2b37eddb276dbae4d3c8195e1f22586573fd11a.png'),
            new Image.network(
                'http://dart.goodev.org/assets/covers/learning-dart-a03a3eca556e403d8a908cedd2b37eddb276dbae4d3c8195e1f22586573fd11a.png'),
            new Image.network(
                'http://dart.goodev.org/assets/covers/learning-dart-a03a3eca556e403d8a908cedd2b37eddb276dbae4d3c8195e1f22586573fd11a.png'),
          ],
        ),
      ),
    );
  }
}
