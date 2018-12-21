import 'package:flutter/material.dart';
import 'model/post.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        highlightColor: Color.fromRGBO(255, 255, 255,0.5),
        splashColor: Colors.white70,
      )
        );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigration',
          //   onPressed: () => debugPrint('Navigation button is pressed'),
          // ),
          title: Text('Capricorn'),
          actions: <Widget>[
           IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () => debugPrint('search button is pressed'),
          ), 
          ],
          elevation: 10.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.pinkAccent,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
       ),
    ); 
} 
}
