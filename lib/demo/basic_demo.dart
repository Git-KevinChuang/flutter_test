import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
          alignment: Alignment.topCenter,
          //repeat: ImageRepeat.repeatY
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight)
        )
      ),
      //color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            //color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0), 
                border: Border.all(
                  color: Colors.red,
                  width: 2
                  ),
                  //borderRadius: BorderRadius.circular(64.0)
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(64.0),
                  //   bottomLeft: Radius.circular(64.0),
                  // ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(6.0, 7.0),
                      color: Colors.blue,
                      blurRadius: 25.0,
                      spreadRadius: -9.0
                    )
                  ],
                  shape: BoxShape.circle,
                  // gradient: RadialGradient(
                  //   colors: [
                  //     Color.fromRGBO(7, 102, 255, 1.0),
                  //     Color.fromRGBO(3, 28, 128, 1.0),
                  //   ]
                  // )
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 28, 128, 1.0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  )
                ),
          )
        ],
      ),
    );
  }
}

class ReachTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'ninghao',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.green,
                ))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);
  final String _author = 'Kevin';
  final String _title = 'Name';
  @override
  Widget build(BuildContext context) {
    return Text(
      '$_author $_title ',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.clip,
    );
    ;
  }
}
