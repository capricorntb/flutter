import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon',
  ];
  String _action = 'nothing';
  List<String> _selected =[];
  String _choice = 'Lemon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 12.0,
              runSpacing: 9.0,
              children: <Widget>[
                Chip(
                  label: Text('life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Tianbao'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('宝'),
                  ),
                ),
                Chip(
                  label: Text('Tianbao'),
                  avatar: CircleAvatar(
                    backgroundImage: AssetImage('images/avator.jpeg'),
                    // backgroundImage:NetworkImage(
                    // 'https://resources.ninghao.net/images/wanghao.jpg'
                    // ),
                    // child: Text('宝'),
                  ),
                ),
                Chip(
                  label: Text('Tianbao'),
                  onDeleted: (){},
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('宝'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  color: Colors.black,
                  height: 32.0,
                  indent: 3.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map(
                    (tag){
                      return ChoiceChip(
                        label: Text(tag),
                        selectedColor: Colors.yellow,
                        selected: _choice == tag,
                        onSelected: (value){
                          setState(() {
                           _choice = tag;
                          });
                        },
                      );
                    }
                  ).toList(),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'Lemon',
            ];
            _selected = [];

            _choice = 'Lemon';

          });
        },
      ),
    );
  }
}
