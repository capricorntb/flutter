import 'package:flutter/material.dart';
import 'model/post.dart';
import 'demo/listview_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      )
        );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Navigation button is pressed'),
          ),
          title: Text('Capricorn'),
          actions: <Widget>[
           IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () => debugPrint('search button is pressed'),
          ), 
          ],
          elevation: 10.0,
        ),
        body: null,
        ); 
} 
}
