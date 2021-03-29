import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:exerfrancais/acceuillumiere.dart';


class Page6lc4success extends StatefulWidget {
  @override
  _SplScreenState createState() => _SplScreenState();
}

class _SplScreenState extends State<Page6lc4success > {
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
              /*Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(

                      radius: 50,
                      backgroundImage: AssetImage('assets/logoliteracy.png'),

                    ),
                    CircularProgressIndicator(),
                    /* new Card(
                    elevation: 20.0,
                       child: Container(
                            height: MediaQuery.of(context).size.width*0.8,
                             child: Image.asset("assets/quizz_cover.jpg", fit:BoxFit.cover,),
                     ),
                         ),*/
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                    ),


                  ],
                ),
              )*/
            ],
          )
        ],
      ),
    );
  }
}

/**8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888***/

/**8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888***/
/*class PdfViewPage extends StatefulWidget {
  //final String pathe;

  //const PdfViewPage({Key key, this.pathe}) : super(key: key);
  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {

  bool _isLoading=false, _isInit=true;
  PDFDocument document;
  void initState() {
    super.initState();
    loadFromAssets();
  }

  loadFromAssets() async {

    setState( (){
      _isInit=false;
      _isLoading=true;
    }

    );
    document= await  PDFDocument.fromAsset("assets/leçon1mypdf.pdf");

    setState( (){
      _isLoading=false;
    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: _isInit?
                Text('Syllabaire Français')
                    : _isLoading
                    ? Center(
                           child: CircularProgressIndicator(),
                         )
                    : PDFViewer(
                  document: document,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/



/* body: Center(
          child: Builder(
            builder: (context) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.amber,
                      child: Text("Open from URL"),
                      onPressed: () {
                        if (urlPDFPath != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath)));
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      color: Colors.cyan,
                      child: Text("Open from Asset"),
                      onPressed: () {
                        if (assetPDFPath != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath)));
                        }
                      },
                    )
                  ],
                ),
          ),
        ),*/