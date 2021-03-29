import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:syllabaire/acceuillumiere.dart';


class Page6lc5success extends StatefulWidget {
  @override
  _SplScreenState createState() => _SplScreenState();
}

class _SplScreenState extends State<Page6lc5success > {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () =>  Navigator.of(context).pushNamedAndRemoveUntil(
        '/listpage', ModalRoute.withName('/')));
  }

  @override
  Widget build(BuildContext context) {
    double ecranlarger1=MediaQuery.of(context).size.width*0.7;
    double ecranlarger2=MediaQuery.of(context).size.width*0.5;
    double ecranlonger1=MediaQuery.of(context).size.height*0.5;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(38, 153, 251, 1.0)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(38, 153, 251, 1.0),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /* CircleAvatar(

                        radius: 50,
                        backgroundImage: AssetImage('assets/lumierelogo.png'),

                      ),*/
                      Card(
                        color: Color.fromRGBO(38, 153, 251, 1.0),
                        elevation: 0.0,
                        child: new Container(
                            height: ecranlonger1,
                            width: ecranlarger1,
                            child: Image.asset("assets/medias/successlc1.png")
                        ),

                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 10.0),//padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "LUMIERE ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      )
                    ],
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}

/**8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888***/

/**8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888***/
