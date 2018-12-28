import 'package:flutter/material.dart';
import './popup_menu_button_demo.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slider_demo.dart';
import './datetime_demo.dart';
import './simple_dialog_demo.dart';
import './alert_dialog_demo.dart';
import './bottom_sheet_demo.dart';
import './snack_bar_demo.dart';
import './expansion_panel_demo.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'ExpansionPanelDemo', page: ExpansionPanelDemo(),),
          ListItem(title: 'SnackBarDemo', page: SnackBarDemo(),),
          ListItem(title: 'BottomSheetDemo', page: BottomSheetDemo(),),
          ListItem(title: 'AlertDialogDemo', page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialogDemo', page: SimpleDialogDemo()),
          ListItem(title: 'SliderDemo', page: SliderDemo()),
          ListItem(title: 'CheckboxButtonDemo', page: CheckboxDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'form', page: FormDemo()),
          ListItem(title: 'RadioButton', page: RadioDemo()),
          ListItem(title: 'SwitchButton', page: SwitchDemo()),
          ListItem(title: 'DatetimeDemo', page: DateTimeDemo()),
          ListItem(
            title: 'Button',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          )
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.purpleAccent,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.toc),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.purpleAccent,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.purpleAccent,
                  // color: Theme.of(context).accentColor,
                  // textColor: Colors.white,
                  // textTheme: ButtonTextTheme.primary,
                ),
                SizedBox(
                  width: 16.0,
                ),
                RaisedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.purpleAccent,
                  textColor: Theme.of(context).accentColor,
                  elevation: 12.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _FloatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black,
      // // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0)
      // ),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text('FloatingActionButtonDemo'),
          elevation: 0.0,
        ),
        floatingActionButton: _floatingActionButtonExtended,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 80,
          ),
          shape: CircularNotchedRectangle(),
        ));
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
