import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:itpaydar2/Colors.dart';
import 'Prallax_Card.dart';


class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> with TickerProviderStateMixin {

  AlignmentDirectional _ironManAlignment = AlignmentDirectional.center; //AlignmentDirectional(0.0, 0.7);

  Timer _everySecond ;


  double _height = 50.0  ;
  double _width  = 50.0  ;
  bool _resized = false ;

  @override
  void initState() {
    super.initState();
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {

      setState(() {


          _ironManAlignment = AlignmentDirectional.topStart;

          if (_resized) {
            _resized = false;
            _height = 50.0;
            _width = 50.0;
          } else {
            //_resized = true;
            _height = 35.0;
            _width = 35.0;
          }

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(color: Colorss.editTextColor,),
        AnimatedContainer(margin: EdgeInsets.only(right: 10.0 , top: 25.0),
          duration: Duration(seconds: 2),
          alignment: _ironManAlignment,
          child:Opacity(opacity: 0.8 , child:  Container(
            height: _height,
            width: _width,
            child: Image.asset('assets/Image/g.png' , color: Colors.white,),
          ),
        ),
        )
      ],
    );
  }


}