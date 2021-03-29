import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exerfrancais/text_utils.dart';
//import 'package:exerfrancais/acceuillumiere.dart';
import 'package:just_audio/just_audio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:exerfrancais/lecon1/l1page6a.dart';
import 'package:badges/badges.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'dart:async';
//import 'package:audioplayers/audioplayers.dart';
class Page5lc1 extends StatefulWidget
{

  @override
  _Page5State createState()=>_Page5State();

}

class _Page5State extends State<Page5lc1>
{
  /*Questions questions;
  List<Questions> listQuestions=[
    new Questions("Paris est la capitale de la Franche " , true, "Evidemment que c'est VRAI, sinon d'après vous la tour Eiffel se trouve où?","paris.jpg"),
    new Questions("La lune est une planète  ", false, "La lune tourne déja d'une Planète: :la terre.Alors pourquoi veut tu qu'elle es soit une", "lune.jpg"),
    new Questions("C'est un cover de la serie Lucifer ", true, " VRAI c'est le diable en question ", "lucifer.jpg"),
    new Questions("C'est le logo de L'entreprise innovante DEXTREM ", true, " Qui peut faire un logo Pareil? ", "dextrem.png"),
  ];
  int index=0;
  int score=0;*/
  //AudioPlayer advancedPlayer;
  // final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  /*Future playone() async {
    advancedPlayer= await AudioCache().play("assets/sara.mp3");

  }*/
  _iconDisplay1(){
    if(_radioValue1 != -1) {
      //bool readStatus = _notes[index].getReadState;
      return Icon(((_radioValue1 == 0) ? Icons.check_circle : Icons
          .cancel),
        color: (_radioValue1 ==0) ? Colors.green : Colors.red,);
    }
    else if(_radioValue1 ==-1){
      return Icon(Icons.arrow_drop_down, color: Colors.white,);
    }
  }
  final player = AudioPlayer();
  //AudioPlayer advancedPlayer = AudioPlayer();
  bool isRightforSara=false;
  bool isRightforRira=false;

  Future playtwo() async {
    stopplay();
    await player.setAsset('assets/medias/lecon1/psaume139.mp3');
    await player.play();
  }


  Future stopplay() async {
    await player.stop();
  }
  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
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
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
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
        borderRadius:  BorderRadius.circular(3),
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
        borderRadius:  BorderRadius.circular(5),
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
        Future.delayed(Duration(seconds: 20), () {
          Navigator.of(context).pop(true);
        });

        return AlertDialog(
          backgroundColor: Colors.white70,
          title: Text("Un peu d'aide?", style: TextStyle(color: Colors.blueAccent),),
          content: Text("Lisez le petit texte de la Leçon 1.", style:TextStyle(color:  Colors.black54),),
          actions: <Widget>[
            FlatButton(
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
  Future<bool> _onWillPop() async {
    await  stopplay();

    /*return true*/
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Êtes vous sur?'),
        content: new Text('Voulez-vous retourner à la page précédente?'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('Non'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Oui'),
          ),
        ],
      ),
    )) ?? false;
  }


  @override
  Widget build(BuildContext context) {
    double size=MediaQuery.of(context).size.width*0.5;
    double hautimg=MediaQuery.of(context).size.height*0.3;
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
               stopplay();
              setState(() {
                Navigator.of(context).pop(true);
              });
            },),
            IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {
              stopplay();
              //if(_radioValue1==0){
                setState(() {
                  Navigator.of(context).pushNamed('/page6alc1');
                 /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Signature()));*/
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
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
      appBar: new AppBar(
        title: new TextUtils("LEÇON 1"),
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
                                  Ink(
                                           width: 32.0,
                                          height: 32.0,
                                         decoration: ShapeDecoration(
                                              color:Color.fromRGBO(38, 153, 251, 1.0),


                                            shape: ContinuousRectangleBorder(
                                                 borderRadius: BorderRadius.circular(5.0),
                                               ),
                                                ),
                                        child: Center(
                                          child:Text("7", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                        ),


                                        ),
                                  new Padding(
                                    padding: new EdgeInsets.only(left:5.0),
                                  ),
                                  Text("Complétez la phrase suivante.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 17.0),),
                                  new Padding(
                                    padding: new EdgeInsets.only(left:5.0),
                                  ),
                                  _iconDisplay1(),
                                  //Question/consigne

                                ],

                              ) ,
                              /// Fin de la première partie

                              new Padding(
                                padding: new EdgeInsets.all(12.0),
                              ),
                              ///Fin du diviseur
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
                                                  Text("Sara est à  __________ . ", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 16.0),),

                                                ],
                                              )


                                          ),
                                        /*  Center(
                                              child:
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[

                                                  Text(" est au  dessus de ma portée.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 16.0),),
                                                ],
                                              )


                                          ),*/
                                          new Padding(
                                            padding: new EdgeInsets.all(10.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                width:hautimg,
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
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"Arras"),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ) ,
                                          new Padding(
                                            padding: new EdgeInsets.all(12.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                width:hautimg,
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
                                                      new Padding(
                                                        padding: new EdgeInsets.only(left:2.0),
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"Elle"),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(12.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Container(
                                                width:hautimg,
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
                                                      new Padding(
                                                        padding: new EdgeInsets.only(left:3.0),
                                                      ),
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"rira"),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

                                          ),
                                        ],
                                      ),
                                    ),
                                    /// Fin de la première partie
                                    new Padding(
                                      padding: new EdgeInsets.all(8.0),
                                    ),
                                    new Divider(
                                      height: 5.0,
                                      color: Colors.black,
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(8.0),
                                    ),
                                    ///Fin du diviseur
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[

                                        //icon numero de question
                                        Ink(
                                          width: 32.0,
                                          height: 32.0,
                                          decoration: ShapeDecoration(
                                            color:Color.fromRGBO(38, 153, 251, 1.0),


                                            shape: ContinuousRectangleBorder(
                                              borderRadius: BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          child: Center(
                                            child:Text("8", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                          ),

                                        ),
                                        new Padding(
                                          padding: new EdgeInsets.only(left:5.0),
                                        ),
                                        Text("Écoutez le verset suivant.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 17.0),),
                                        //Question/consigne
                                        new Padding(
                                          padding: new EdgeInsets.only(left:10.0),
                                        ),

                                      ],

                                    ) ,
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
                                                  Text("Lisez le dans la bible. ", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold),),
                                                ],
                                              )


                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(12.0),
                                          ),

                                          Center(
                                              child:
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  _getExampleBadge(padding: (6).toDouble(),text:"Psaumes 139 V. 1"),
                                                ],
                                              )


                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.all(12.0),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Center(
                                               // color:Color.fromRGBO(239, 243, 246, 1.0),
                                                child:
                                                new Row(

                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: <Widget>[
                                                      Ink(
                                                        width: 65.0,
                                                        height: 70.0,
                                                        decoration: ShapeDecoration(
                                                          color: Color.fromRGBO(239, 243, 246, 1.0),


                                                          shape: ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.circular(5.0),
                                                            side: BorderSide(color: Colors.black),
                                                          ),
                                                        ),
                                                        child: IconButton(
                                                          icon: Icon(Icons.play_circle_outline, color: Color.fromRGBO(142, 156, 168, 1.0),),
                                                          onPressed: () =>playtwo(),
                                                        ),
                                                      ),
                                                      new Padding(
                                                        padding: new EdgeInsets.only(left:10.0),
                                                      ),
                                                      Ink(
                                                        width: 65.0,
                                                        height: 70.0,
                                                        decoration: ShapeDecoration(
                                                          color: Color.fromRGBO(239, 243, 246, 1.0),


                                                          shape: ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.circular(5.0),
                                                          ),
                                                        ),
                                                        child: RaisedButton(
                                                          elevation:1.0,
                                                          color: Color.fromRGBO(38, 153, 251, 1.0),
                                                          splashColor: Colors.greenAccent[200],
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: new BorderRadius.circular(18.0),
                                                            side: BorderSide(color: Colors.black),
                                                          ),
                                                          child: Icon(Icons.clear),
                                                          onPressed:(){
                                                            stopplay();
                                                          },

                                                        ),
                                                      ),
                                                     ]
                                                ),),
                                              //photo
                                              //icone de son


                                            ],

                                          ) ,
                                         /* Row(
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
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"un"),]
                                                ),),
                                              //photo
                                              //icone de son

                                            ],

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
                                                      _getExampleBadgeElse(padding: (4).toDouble(),text:"trois"),]
                                                ),),
                                              //photo
                                              //icone de son


                                            ],

                                          ),*/
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
        if(_radioValue1==0){
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
              Navigator.of(context).pushNamed('/page6alc1');
              /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Signature()));*/
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
          })*/;}
        else{
          AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Une petite erreur ☹!',
              desc:
              'Désolé une de vos réponses n\'est pas correcte ☹' ,
              autoHide: Duration(seconds: 2),
             // btnOkOnPress: () {  Navigator.of(context).pop();},
           //   btnOkIcon: Icons.cancel,
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

    ),);
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
