import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exerfrancais/text_utils.dart';

import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:exerfrancais/lecon2/l2page8a.dart';
import 'package:badges/badges.dart';
import 'package:just_audio/just_audio.dart';

//import 'package:audioplayers/audioplayers.dart';
class Page7lc2 extends StatefulWidget
{

  @override
  _Page7State createState()=>_Page7State();

}

class _Page7State extends State<Page7lc2>
{


  //AudioCache audioCache = AudioCache();
  //AudioPlayer advancedPlayer = AudioPlayer();
  final player = AudioPlayer();
  bool isRightforSara=false;
  bool isRightforRira=false;

  Future playt1() async {
    stopplay();
    await player.setAsset('assets/medias/lecon2/elleNeRiraPas.mp3');
    await player.play();
  }
  Future playt2() async {
    stopplay();
    await player.setAsset('assets/medias/lecon2/saraAuneTasse.mp3');
    await player.play();
  }
  Future playt3() async {
    stopplay();
    await player.setAsset('assets/medias/lecon2/saraEstArras.mp3');
    await player.play();
  }

  Future playtwo() async {
    stopplay();
    await player.setAsset('assets/medias/lecon2/psaume143.mp3');
    await player.play();
  }

  Future stopplay() async {
    await player.stop();
  }
  Widget _getExampleBadge({double padding, String text}) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Badge(
        badgeColor: Color.fromRGBO(38, 153, 251, 1.0),
        borderRadius: BorderRadius.circular(3),
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
        borderRadius: BorderRadius.circular(5),
        padding: EdgeInsets.all(padding ?? 4),
        shape: BadgeShape.square,
        badgeContent: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
    );
  }
  bool isRightSara=false;
  bool isRightRira=false;
  bool isRightEllerit=false;
  bool isRightElleRira=false;

  /*Future playtwo() async {
   AssetsAudioPlayer.playAndForget(
       Audio("assets/elleRira.mp3"));
  }*/

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
          content: Text("L'écoute et la répétition permettent d'assimiler les tournures de la langue.", style:TextStyle(color:  Colors.black54),),
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
  TextEditingController controller;
  bool isNameValid = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();

    /// questions=listQuestions[index];
  }
  Future<bool> _onWillPop() async {
    await stopplay();

    /*return true*/
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Êtes vous sur?'),
        content: new Text('Voulez-vous retourner à la page précédente?'),
        actions: <Widget>[
          new TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('Non'),
          ),
          new TextButton(
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
    double hautimg=MediaQuery.of(context).size.height*0.2;
    double largimg=MediaQuery.of(context).size.width*0.2;


    // TODO: implement build
    final makeBottom = Container(
      height: 55.0,
      child:BottomAppBar(
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
              //if(isRightSara){
                setState(() {
                  Navigator.of(context).pushNamed('/page8alc2');
                 /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Signaturelc2()));*/
                });//}
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
      child:Scaffold(
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
      body:
      SafeArea(
          child: SingleChildScrollView(
            child:new Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
                    crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
                    children: <Widget>[
                      Container(
                        // color:Color.fromRGBO(239, 243, 246, 1.0),
                        child:Column(
                          children: <Widget>[

                            /*Center(
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    //Text('Badges:'),
                                    // for (int i = 0; i < 5; i++)
                                    _getExampleBadge(padding: (6).toDouble(),text:"tis + se"),
                                  ],
                                )


                            ),*/
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
                                Text("Écoutez et répétez les phrases", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 16.0),),


                              ],

                            ) ,
                            Center(
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    //Text('Badges:'),
                                    // for (int i = 0; i < 5; i++)
                                    Text("suivantes.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                  ],
                                )


                            ),
                            new Padding(
                              padding: new EdgeInsets.all(8.0),
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

                                        _getExampleBadgeElse(padding: (4).toDouble(),text:"Elle  ne   rira  pas."),]
                                  ),),
                                //photo
                                //icone de son

                               /* Container(
                                  color:Color.fromRGBO(239, 243, 246, 1.0),
                                  child:*/

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
                                      onPressed: () => playt1(),
                                    ),
                                  ),//),
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
                                    child:Icon(Icons.clear),
                                    onPressed:(){
                                      stopplay();
                                    },

                                  ),
                                ),
                              ],

                            ) ,
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

                                        _getExampleBadgeElse(padding: (4).toDouble(),text:"Sara a une tasse."),]
                                  ),),
                                //photo
                                //icone de son
                                /*Container(
                                  color:Color.fromRGBO(239, 243, 246, 1.0),
                                  child:*/
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
                                      onPressed: () => playt2(),
                                    ),
                                  ),//),
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

                              ],

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

                                        _getExampleBadgeElse(padding: (4).toDouble(),text:"Sara est  à Arras."),]
                                  ),),
                                //photo
                                //icone de son

                                /*Container(
                                  color:Color.fromRGBO(239, 243, 246, 1.0),
                                  child:*/Ink(
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
                                      onPressed: () => playt3(),
                                    ),
                                  ),//),
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
                              child:Text("9", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),),
                            ),

                          ),
                          new Padding(
                            padding: new EdgeInsets.only(left:5.0),
                          ),
                          Text("Écoutez le verset suivant.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 17.0),),
                          //Question/consigne

                        ],

                      ) ,
                      Container(
                          child: Column(
                            children: <Widget>[
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("Lisez le dans la bible. ", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 16),),
                                    ],
                                  )


                              ),
                              new Padding(
                                padding: new EdgeInsets.all(5.0),
                              ),

                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      _getExampleBadge(padding: (6).toDouble(),text:"Psaumes 143 V. 2"),
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

                            ],
                          )
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
                      ///deuxieme conteneur
                      Container(
                        child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
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
                                        child:Text("10", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                      ),

                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.only(left:5.0),
                                    ),
                                    //Question/consigne
                                    Text("Entrez la phrase suivante:", style: TextStyle(color: Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 17.0),),

                                  ]),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("Sara a une tasse.", style: TextStyle(color:Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                     // Text("Puis validez.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold),),
                                    ],
                                  )


                              ),
                              TextField(
                                onChanged:(string){
                                if(string=="Sara a une tasse."){

                                  Fluttertoast.showToast(msg: 'Correct!',toastLength: Toast.LENGTH_SHORT);
                                  isNameValid = true;
                                }
                                else{
                                  Fluttertoast.showToast(msg: 'Incorrect !',toastLength: Toast.LENGTH_SHORT);
                                  isNameValid = false;
                                }



                                },
                                //controller: editingController,
                                decoration: InputDecoration(
                                    //labelText: "Rechercher",
                                    hintText: "Entrez la phrase",
                                    //prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                                    errorText: isNameValid ? null : "texte incorrect"
                                ),
                                controller: controller,


                              ),
                              new Padding(
                                padding: new EdgeInsets.all(12.0),
                              ),
                              /// Fin de la première partie

                              new Padding(
                                padding: new EdgeInsets.all(10.0),
                              ),


                            ]

                        ),
                      ),


                    ]

                )
            ),)),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward_ios), onPressed: () {
       // if(isRightSara){
        stopplay();
          setState(() {
            Navigator.of(context).pushNamed('/page8alc2');
           /* Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Signaturelc2()));*/
          });//}

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
