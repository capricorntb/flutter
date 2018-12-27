import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'tianbao',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('nobody@nowhere'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/avator.jpeg'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(image: 
              NetworkImage('http://www.liulongbin.top:3005/images/bg1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.center,
            ),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.center,
            ),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'settings',
              textAlign: TextAlign.center,
            ),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
