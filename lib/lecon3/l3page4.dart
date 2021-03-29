import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exerfrancais/text_utils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:exerfrancais/lecon3/l3page5.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:badges/badges.dart';
import 'dart:async';
//import 'package:audioplayers/audioplayers.dart';
class Page4lc3 extends StatefulWidget
{

  @override
  _Page4State createState()=>_Page4State();

}

class _Page4State extends State<Page4lc3>
{


  ///----------------------------------------------------  DIALOGS~~~~~##################--------------------------------------------
  _iconDisplay1(){
    if(_radioValue1 != -1) {
      //bool readStatus = _notes[index].getReadState;
      return Icon(((_radioValue1 == 0) ? Icons.check_circle : Icons
          .cancel),
        color: (_radioValue1 ==0) ? Colors.green : Colors.red,);
    }
    else if(_radioValue1 == -1) {
      return Icon(Icons.arrow_drop_down, color: Colors.white,);
    }
  }
  _iconDisplay2(){
    if(_radioValue2 != -1) {
      //bool readStatus = _notes[index].getReadState;
      return Icon(((_radioValue2  == 2) ? Icons.check_circle : Icons
          .cancel),
        color: (_radioValue2 == 2) ? Colors.green : Colors.red,);
    }
    else if(_radioValue2 == -1){
      return Icon(Icons.arrow_drop_down, color: Colors.white,);
    }
  }

  _iconDisplay3(){
    if(_radioValue3 != -1) {
      //bool readStatus = _notes[index].getReadState;
      return Icon(((_radioValue3  == 0) ? Icons.check_circle : Icons
          .cancel),
        color: (_radioValue3 == 0) ? Colors.green : Colors.red,);
    }
    else if(_radioValue3 == -1){
      return Icon(Icons.arrow_drop_down, color: Colors.white,);
    }
  }
  _iconDisplay4(){
    if(_radioValue4 != -1) {
      //bool readStatus = _notes[index].getReadState;
      return Icon(((_radioValue4  == 0) ? Icons.check_circle : Icons
          .cancel),
        color: (_radioValue4 == 0) ? Colors.green : Colors.red,);
    }
    else if(_radioValue4 == -1){
      return Icon(Icons.arrow_drop_down, color: Colors.white,);
    }
  }


  /// ///----------------------------------------------------  DIALOGS~~~~~##################--------------------------------------------


 // AudioCache audioCache = AudioCache();
  //AudioPlayer advancedPlayer = AudioPlayer();
  bool isRightforSara=false;
  bool isRightforRira=false;


  /*Future playtwo() async {
   AssetsAudioPlayer.playAndForget(
       Audio("assets/elleRira.mp3"));
  }*/
  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
          setState(() {
            isRightforSara=true;
          });
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Incorrect!',toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Incorrect!',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;

      switch (_radioValue2) {
        case 0:
          Fluttertoast.showToast(msg: 'Incorrect !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Incorrect !',toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Correct!',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }
  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;

      switch (_radioValue3) {
        case 0:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Incorrect !',toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Incorrect!',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }
  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;

      switch (_radioValue4) {
        case 0:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(msg: 'Incorrect !',toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(msg: 'Incorrect!',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }
  Widget _getExampleBadge({double padding, String text}) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Badge(
        badgeColor: Color.fromRGBO(38, 153, 251, 1.0),
        borderRadius: BorderRadius.circular(3.0),
        padding: EdgeInsets.all(padding ?? 4),
        shape: BadgeShape.square,
        badgeContent: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ),
    );
  }

  Widget _getExampleBadgeElse({double padding, String text}) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Badge(
        badgeColor: Colors.green,
        borderRadius:  BorderRadius.circular(5.0),
        padding: EdgeInsets.all(padding ?? 4),
        shape: BadgeShape.square,
        badgeContent: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
    );
  }
  void _showSuccessDialog()
  {
    showDialog(
      context: context,
      builder: (BuildContext context)
      {
        Future.delayed(Duration(seconds: 10), () {
          Navigator.of(context).pop(true);
        });

        return AlertDialog(
          backgroundColor: Colors.white70,
          title: Text("Un peu d'aide?", style: TextStyle(color: Colors.blueAccent),),
          content: Text("Une phrase commence par une lettre Majuscule et se termine par un point. Lisez le texte étudié au niveau de la leçon 3 dans le syllabaire", style:TextStyle(color:  Colors.black54),),
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
  void initState() {
    // TODO: implement initState
    super.initState();

    /// questions=listQuestions[index];
  }


  @override
  Widget build(BuildContext context) {
    double size=MediaQuery.of(context).size.width*0.5;
    double hautimg=MediaQuery.of(context).size.height*0.2;
    double largimg=MediaQuery.of(context).size.width*0.2;
    // TODO: implement build
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
             // if((_radioValue1==0 && _radioValue2==2) && (_radioValue3==0 && _radioValue4==0)){
                setState(() {
                  Navigator.of(context).pushNamed('/page5lc3');
                 /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Page5lc3()));*/
                });
            //}
            },),
            new Padding(
              padding: new EdgeInsets.only(right:10.0),
            ),
          ],
        ),
      ),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new TextUtils("LEÇON 3"),
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
          child: SingleChildScrollView(
            child:
            new Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
                    crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
                    children: <Widget>[
                      Container(

                          child: Column(
                            children: <Widget>[
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  //icon numero de question
                                  Icon(Icons.looks_5, color:Color.fromRGBO(38, 153, 251, 1.0), size: 40.0),
                                  Text("Cochez la phrase correcte.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 17.0),),
                                  //Question/consigne

                                ],

                              ) ,
                              new Padding(
                                padding: new EdgeInsets.all(5.0),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      // color:Color.fromRGBO(239, 243, 246, 1.0),
                                      child:Column(
                                        children: <Widget>[
                                          Center(
                                              child:
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  //Text('Badges:'),
                                                  // for (int i = 0; i < 5; i++)
                                                  _getExampleBadge(padding: (6).toDouble(),text:"1"),
                                                  new Padding(
                                                    padding: new EdgeInsets.only(left:8.0),
                                                  ),
                                                  _iconDisplay1(),
                                                ],
                                              )


                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(5.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(

                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      new Radio(
                                                        value: 0,
                                                        groupValue: _radioValue1,
                                                        onChanged: _handleRadioValueChange1,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"Il y a un rat sur le tas."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ) ,
                                          new Padding(
                                            padding: new EdgeInsets.all(16.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      new Radio(
                                                        value: 1,
                                                        groupValue: _radioValue1,
                                                        onChanged: _handleRadioValueChange1,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"le tas y a un rat sur Il."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(16.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      new Radio(
                                                        value: 2,
                                                        groupValue: _radioValue1,
                                                        onChanged: _handleRadioValueChange1,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"un rat Il y a sur le tas."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ),
                                        ],
                                      ),
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(8.0),
                                    ),
                                    /// Fin de la première partie
                                    new Divider(
                                      height: 5.0,
                                      color: Colors.black,
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(8.0),
                                    ),
                                    ///Fin du diviseur

                                    Container(
                                      // color:Color.fromRGBO(239, 243, 246, 1.0),
                                      child:Column(
                                        children: <Widget>[

                                          Center(
                                              child:
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  //Text('Badges:'),
                                                  // for (int i = 0; i < 5; i++)
                                                  _getExampleBadge(padding: (6).toDouble(),text:"2"),
                                                  new Padding(
                                                    padding: new EdgeInsets.only(left:8.0),
                                                  ),
                                                  _iconDisplay2(),
                                                ],
                                              )


                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(5.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(

                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      new Radio(
                                                        value: 0,
                                                        groupValue: _radioValue2,
                                                        onChanged: _handleRadioValueChange2,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"Rita est n' pas à Arras."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ) ,
                                          new Padding(
                                            padding: new EdgeInsets.all(16.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      new Radio(
                                                        value: 1,
                                                        groupValue: _radioValue2,
                                                        onChanged: _handleRadioValueChange2,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"Arras à Rita n'est pas."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(16.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      new Radio(
                                                        value: 2,
                                                        groupValue: _radioValue2,
                                                        onChanged: _handleRadioValueChange2,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"Rita n'est pas à Arras."),]
                                                ),),
                                              //photo
                                              //icone de son


                                            ],

                                          ),
                                        ],
                                      ),
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(8.0),
                                    ),
                                    /// Fin de la première partie
                                    new Divider(
                                      height: 5.0,
                                      color: Colors.black,
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(8.0),
                                    ),
                                    Container(
                                      // color:Color.fromRGBO(239, 243, 246, 1.0),
                                      child:Column(
                                        children: <Widget>[

                                          Center(
                                              child:
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  //Text('Badges:'),
                                                  // for (int i = 0; i < 5; i++)
                                                  _getExampleBadge(padding: (6).toDouble(),text:"3"),
                                                  new Padding(
                                                    padding: new EdgeInsets.only(left:8.0),
                                                  ),
                                                  _iconDisplay3(),
                                                ],
                                              )


                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(5.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(

                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      new Radio(
                                                        value: 0,
                                                        groupValue: _radioValue3,
                                                        onChanged: _handleRadioValueChange3,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"Sara ratisse le tas."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ) ,
                                          new Padding(
                                            padding: new EdgeInsets.all(16.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      new Radio(
                                                        value: 1,
                                                        groupValue: _radioValue3,
                                                        onChanged: _handleRadioValueChange3,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"tas Sara ratisse le."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(16.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      new Radio(
                                                        value: 2,
                                                        groupValue: _radioValue3,
                                                        onChanged: _handleRadioValueChange3,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"ratisse le tas Sara."),]
                                                ),),
                                              //photo
                                              //icone de son


                                            ],

                                          ),
                                        ],
                                      ),
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(8.0),
                                    ),
                                    /// Fin de la première partie
                                    new Divider(
                                      height: 5.0,
                                      color: Colors.black,
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(8.0),
                                    ),
                                    Container(
                                      // color:Color.fromRGBO(239, 243, 246, 1.0),
                                      child:Column(
                                        children: <Widget>[

                                          Center(
                                              child:
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  //Text('Badges:'),
                                                  // for (int i = 0; i < 5; i++)
                                                  _getExampleBadge(padding: (6).toDouble(),text:"4"),
                                                  new Padding(
                                                    padding: new EdgeInsets.only(left:8.0),
                                                  ),
                                                  _iconDisplay4(),
                                                ],
                                              )


                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(5.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(

                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      new Radio(
                                                        value: 0,
                                                        groupValue: _radioValue4,
                                                        onChanged: _handleRadioValueChange4,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"Elle mange la tarte."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ) ,
                                          new Padding(
                                            padding: new EdgeInsets.all(16.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      new Radio(
                                                        value: 1,
                                                        groupValue: _radioValue4,
                                                        onChanged: _handleRadioValueChange4,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"tarte Elle mange la."),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(16.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      new Radio(
                                                        value: 2,
                                                        groupValue: _radioValue4,
                                                        onChanged: _handleRadioValueChange4,
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"la tarte mange Elle."),]
                                                ),),
                                              //photo
                                              //icone de son


                                            ],

                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(10.0),
                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )

                            ],
                          )
                      ),
                      ///deuxieme conteneur
                      /*Container(
                    child: Column(
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                                //icon numero de question
                                Icon(Icons.looks_two, color:Color.fromRGBO(38, 153, 251, 1.0), size: 30.0),
                                //Question/consigne
                                Text("Choisissez la bonne réponse", style: TextStyle(color: Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold),),

                              ]),
                          Card(
                            elevation: 0.0,
                            child: new Container(
                                height: hautimg,
                                width: largimg,
                                child: Image.asset("assets/ellrira.png")
                            ),

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[

                              RaisedButton(
                                elevation:1.0,
                                color: isRightSara? Colors.redAccent: Color.fromRGBO(239, 243, 246, 1.0),
                                child: TextUtils("Sara", color:Color.fromRGBO(142, 156, 168, 1.0),),
                                onPressed:(){
                                  setState(() {
                                    isRightElleRira=true;
                                    isRightEllerit=true;
                                    isRightRira=true;
                                    isRightSara=true;
                                  });
                                },

                              ),
                              RaisedButton(
                                elevation:1.0,
                                color: isRightRira? Colors.redAccent: Color.fromRGBO(239, 243, 246, 1.0),
                                child: TextUtils("Rira", color:Color.fromRGBO(142, 156, 168, 1.0),),
                                onPressed:(){
                                  setState(() {
                                    isRightElleRira=true;
                                    isRightEllerit=true;
                                    isRightRira=true;
                                    isRightSara=true;
                                  });
                                },

                              ),


                            ],


                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[

                              RaisedButton(
                                elevation:1.0,
                                color: isRightEllerit? Colors.redAccent: Color.fromRGBO(239, 243, 246, 1.0),
                                child: TextUtils("Elle rit", color: Color.fromRGBO(142, 156, 168, 1.0),),
                                onPressed:(){
                                  setState(() {
                                    isRightElleRira=true;
                                    isRightEllerit=true;
                                    isRightRira=true;
                                    isRightSara=true;
                                  });
                                },

                              ),
                              RaisedButton(
                                elevation:1.0,
                                color:isRightElleRira? Colors.green: Color.fromRGBO(239, 243, 246, 1.0),
                                child: TextUtils("Elle rira", color: Color.fromRGBO(142, 156, 168, 1.0),),
                                onPressed:(){
                                  setState(() {
                                    isRightElleRira=true;
                                    isRightEllerit=true;
                                    isRightRira=true;
                                    isRightSara=true;
                                  });
                                },

                              ),

                            ],

                          ) ,
                        ]

                    ),
                  ),*/
                      /*Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      RaisedButton(
                        elevation:1.0,
                        color: Color.fromRGBO(38, 153, 251, 1.0),
                        splashColor: Colors.greenAccent[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        child: Icon(Icons.home, color:Color.fromRGBO(38, 153, 251, 1.0), size: 30.0),
                        onPressed:(){
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ListPage()));
                          });
                        },

                      ),
                      RaisedButton(
                        elevation:1.0,
                        splashColor: Colors.yellow[200],
                        color:Color.fromRGBO(38, 153, 251, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        child: Icon(Icons.arrow_forward_ios, color:Color.fromRGBO(38, 153, 251, 1.0), size: 30.0),
                        onPressed:(){
                          setState(() {

                          });
                        },

                      ),

                    ],

                  ) ,*/

                    ]

                )
            ),
          )
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.panorama_fish_eye), onPressed: () {
        if((_radioValue1==0 && _radioValue2==2) && (_radioValue3==0&& _radioValue4==0)){
          AwesomeDialog(
            context: context,
            animType: AnimType.LEFTSLIDE,
            headerAnimationLoop: true,
            dialogType: DialogType.SUCCES,
            title: 'Bravo !!! 😀😀😀',
            desc:
            'Vous avez 20/20 sur toute la ligne!',
            autoHide: Duration(seconds: 3),
            btnOkOnPress: () {
              Navigator.of(context).pushNamed('/page5lc3');
              /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Page5lc3 ()));*/
            },
            btnOkIcon: Icons.check_circle,
            /* onDissmissCallback: () {
                debugPrint('Dialog Dissmiss from callback');
              }*/)
            ..show();
          /*setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Page2lc1()));
          })*/}
        else{
          AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Une petite erreur ☹!',
              desc:
              'Désolé une de vos réponses n\'est pas correcte ☹ ☹' ,
              autoHide: Duration(seconds: 2),
              //btnOkOnPress: () {  Navigator.of(context).pop();},
        //      btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
            ..show();

        }

      },),
      bottomNavigationBar: makeBottom,
      /* body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         // new TextUtils("Question # ${index +1}", color: Colors.blue[900], fontWeight: FontWeight.bold,),
          //TextUtils("Score: $score/${index +1}", color: Colors.red[900],),
          Card(
            elevation: 8.0,
            child: new Container(
                height: size,
                width: size,
                child: Image.asset("assets/"+questions.imagePath)
            ),

          ),
          TextUtils(questions.question, color: Colors.black, textScaleFactor: 1.5,),
          Container(
              child: Center(

                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    RaisedButton(
                      elevation:8.0,
                      color: Colors.green,
                      child: TextUtils("Vrai", color: Colors.white,),
                      onPressed:(){
                        dialog(true);
                      },

                    ),
                    RaisedButton(
                      elevation:8.0,
                      color: Colors.red,
                      child: TextUtils("Faux", color: Colors.white,),
                      onPressed:(){
                        dialog(false);
                      },

                    ),

                  ],

                ) ,
              )
          ),

        ],

      ),*/

    );
  }
/* RaisedButton boutonBool(bool b)
  {
    return new RaisedButton(
        elevation:8.0,
        color: Colors.green,
        child: TextUtils( b? "Vrai": "Faux", color: Colors.white,),
        onPressed:( ()=> dialog(b)),

    );
  }*/

/*Future<Null> dialog(bool b) async {
    bool bonneResponse=(b== questions.response);
    String vrai= "assets/true.png";
    String faux=" assets/false.png";
    if(bonneResponse){score++;}
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return new SimpleDialog(
            title:  TextUtils(bonneResponse? "Bravo!" :" Dommage Ducon!", color: bonneResponse? Colors.green: Colors.red, textScaleFactor: 1.4,),
            contentPadding: EdgeInsets.all(18.0),
            children: <Widget>[
              new Image.asset(bonneResponse? vrai : faux, fit: BoxFit.cover,),
              Container(height: 20.0,),
              TextUtils(questions.explication, textScaleFactor: 1.4,color: Colors.white,),
              Container(height: 20.0,),
              RaisedButton(
                color: Colors.amber,
                child: TextUtils("Question suivante", color: Colors.white, textScaleFactor: 1.2, fontFamily: "Athletic", fontWeight: FontWeight.bold,),
                onPressed:(){
                  Navigator.pop(context);
                  getNextQuestion();

                }
                ,

              ),
            ],
          );
        }

    );

  }*/

/*void getNextQuestion()
  {
    if(index < listQuestions.length -1)
    {
      index++;
      setState(() {
        questions= listQuestions[index];
      });

    }

    //si on est à la fin des questions, retourner à la page d'acceuil
    else
    {
      alerte();
    }
  }*/

/*Future<Null> alerte() async{
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext buildcontext) // pour ne pas melanger avec le context de l'app: context: context )
        {
          return new AlertDialog(
            title:  TextUtils("Fin du Quizz!", color: Colors.green, textScaleFactor: 1.4,),
            contentPadding: EdgeInsets.all(18.0),
            content: new TextUtils("Merci d'avoir jouer ! Votre score est de $score/${index-1}", color: Colors.brown[900], textScaleFactor: 1.4, ),
            actions: <Widget>[
              new FlatButton(onPressed: ()
              {
                Navigator.pop(buildcontext);
                Navigator.pop(context);
              },


                child: TextUtils("Terminus", color: Colors.purpleAccent, textScaleFactor: 1.4,),)
            ],

          );
        }

    );

  } */

}
