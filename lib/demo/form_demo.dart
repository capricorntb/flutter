import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.teal,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFiledDemo(),
              RegisterForm(),
            ],
          ),
        ),
      ),
      // body: ThemeDemo(
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;

  bool autovalidate = false;
  void submitRegisterForm () {
    if (registerFormKey.currentState.validate()){
     registerFormKey.currentState.save();
    
    debugPrint('username: $username');
    debugPrint('password: $password'); 

    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('正在注册...'),
      )
    );

    }else{
      setState(() {
              autovalidate = true;
            });

    }
  }
  String validateUsername(value){
    if (value.isEmpty){
      return 'Username is required.';
    }
    return null;
  }

  String validatePassword(value){
    if (value.isEmpty){
      return ' password is required';
    }
    return null;

  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Username",
              helperText: '',
            ),
            onSaved: (value){
              username = value;
            },
            validator: validateUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              helperText: '',
            ),
            onSaved: (value){
              password = value;
            },
            validator: validatePassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 32.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }
}


class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}

class TextFiledDemo extends StatefulWidget {
  @override
  _TextFiledDemoState createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  final textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() { 
    super.initState();
    // textEditingController.text = 'hi';
    textEditingController.addListener(
      (){
        debugPrint('imput: ${textEditingController.text}');
      }
    );
  }

  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value){
      //   debugPrint('input:$value');
      // },
      onSubmitted: (value) {
        debugPrint('input:$value');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: 'Enter the post title.',
          // border: OutlineInputBorder()
          filled: true,
          fillColor: Colors.yellow),
    );
  }
}
