import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/avator.jpeg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.5),
            BlendMode.hardLight,)
        ),
      ),
      // color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            // padding: EdgeInsets.only(left: 24.0, right: 8.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              border: Border.all(
                color: Colors.indigoAccent,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   // bottomRight: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0),
              // ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                )],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255,1.0),
              //     Color.fromRGBO(3, 28, 128,1.0),
              //   ],
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255,1.0),
                  Color.fromRGBO(3, 28, 128,1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'capricorn',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontsize: 50.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: '.com',
                style: TextStyle(
                  fontsize: 17.0,
                  color: Colors.black,
                ))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontsize: 28.0,
  );

  final String _authour = '李白';
  final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    return Text(
      '<< $_title>> ---- $_authour.君不见黄河之水天上来，奔流到海不复回，群不见高堂明镜悲白发，朝如青丝暮成雪，人生得意须尽欢，莫使金樽空对月，天生我材必有用，千金散尽还复来，烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
