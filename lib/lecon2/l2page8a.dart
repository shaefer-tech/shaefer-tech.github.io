import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hand_signature/signature.dart';
import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:exerfrancais/lecon2/l2page9.dart';
import 'package:exerfrancais/text_utils.dart';

//void main() => runApp(MyApp());

HandSignatureControl control = new HandSignatureControl(
  threshold: 5.0,
  smoothRatio: 0.65,
  velocityRange: 2.0,
);

ValueNotifier<String> svg = ValueNotifier<String>(null);

ValueNotifier<ByteData> rawImage = ValueNotifier<ByteData>(null);

class Signaturelc2 extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _DrawExampleStae createState() => _DrawExampleStae();
}


class _DrawExampleStae extends State<Signaturelc2> {

  void _showSuccessDialog()
  {
    showDialog(
      context: context,
      builder: (BuildContext context)
      {
        Future.delayed(Duration(seconds: 5), () {
          Navigator.of(context).pop(true);
        });

        return AlertDialog(
          backgroundColor: Colors.white70,
          title: Text("Un peu d'aide?", style: TextStyle(color: Colors.blueAccent),),
          content: Text("Dessinez à la main ou au stylet les lettres ou mots que vous voyez. Cela a pour but d'améliorer votre capacité d'écriture.", style:TextStyle(color:  Colors.black54),),
          actions: <Widget>[
            TextButton(
              child:  Text("Fermer", style: TextStyle(color: Colors.blueGrey),),
              onPressed: (){


                Navigator.of(context).pop();


              },
            )
          ],
        );

      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(239, 243, 246, 1.0),
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(left:10.0),
            ),
            IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
              // stopplay();
              setState(() {
                Navigator.of(context).pop(true);
              });
            },),
            IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {

              setState(() {
                Navigator.of(context).pushNamed('/page9lc2');
                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Page6lc2success()));*/
              });
            },),
            new Padding(
              padding: new EdgeInsets.only(right:10.0),
            ),
          ],
        ),
      ),
    );
    return MaterialApp(
      title: 'LEÇON 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 153, 251, 1.0),
        appBar: new AppBar(
          title: new TextUtils("LEÇON 2"),
          leading: MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 0.1,
          backgroundColor: Color.fromRGBO(38, 153, 251, 1.0),
          actions: <Widget>[
            /*Container(
            margin: EdgeInsets.only(right: 16),
            alignment: Alignment.center,
            child: Text(
              '$_actualPageNumber/$_allPagesCount',
              style: TextStyle(fontSize: 22),
            ),
          ),*/
            IconButton(icon: Icon(Icons.home), onPressed: () {

              setState(() {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/listpage', ModalRoute.withName('/'));
              });
            },),

            IconButton(
              icon: Icon(Icons.help, color: Color.fromRGBO(239, 243, 246, 1.0)),
              onPressed: () {
                _showSuccessDialog();
              },
            ),
          ],

          //leading: new Icon(Icons.polymer),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Center(
                    child: Image.asset("assets/medias/lecon2/draw2.png", fit: BoxFit.cover,),
                  ),
                  Expanded(
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              constraints: BoxConstraints.expand(),
                              color: Colors.white,
                              child: HandSignaturePainterView(
                                control: control,
                                type: SignatureDrawType.shape,
                              ),
                            ),
                            CustomPaint(
                              painter: DebugSignaturePainterCP(
                                control: control,
                                cp: false,
                                cpStart: false,
                                cpEnd: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[

                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                ],
              ),

            ],
          ),
        ),

        floatingActionButton:  FloatingActionButton(
          backgroundColor: Color.fromRGBO(0, 0, 108, 1.0),
            //focusColor: ,
            hoverColor:Color.fromRGBO(228, 54, 3, 1.0),
            heroTag: "Effacer",
            child: Icon(Icons.clear),
            tooltip: "Effacer",
          onPressed: control.clear,
        ),
        bottomNavigationBar: makeBottom,
      ),
    );
  }

  Widget _buildImageView() => Container(
    width: 192.0,
    height: 96.0,
    decoration: BoxDecoration(
      border: Border.all(),
      color: Colors.white30,
    ),
    child: ValueListenableBuilder<ByteData>(
      valueListenable: rawImage,
      builder: (context, data, child) {
        if (data == null) {
          return Container(
            color: Colors.red,
            child: Center(
              child: Text('not signed yet (png)'),
            ),
          );
        } else {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.memory(data.buffer.asUint8List()),
          );
        }
      },
    ),
  );

  Widget _buildSvgView() => Container(
    width: 192.0,
    height: 96.0,
    decoration: BoxDecoration(
      border: Border.all(),
      color: Colors.white30,
    ),
    child: ValueListenableBuilder<String>(
      valueListenable: svg,
      builder: (context, data, child) {
        return HandSignatureView.svg(
          data: data,
          padding: EdgeInsets.all(8.0),
          placeholder: Container(
            color: Colors.red,
            child: Center(
              child: Text('not signed yet (svg)'),
            ),
          ),
        );
      },
    ),
  );
}

