import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exerfrancais/text_utils.dart';

import 'package:exerfrancais/lecon5/l5page2.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'dart:async';

import 'package:just_audio/just_audio.dart';
//import 'package:audioplayers/audioplayers.dart';
class Page1lc5 extends StatefulWidget
{

  @override
  _Page1State createState()=>_Page1State();

}

class _Page1State extends State<Page1lc5>
{

  ///----------------------------------------------------  DIALOGS~~~~~##################--------------------------------------------
  _iconDisplay(){
    if(isRightSara) {
      //bool readStatus = _notes[index].getReadState;
      return Icon(((isRightSara && vrai == 1) ? Icons.check_circle : Icons
          .cancel),
        color: (isRightSara && vrai == 1) ? Colors.green : Colors.red,);
    }
    else{
      return Icon(Icons.arrow_drop_down, color: Colors.white,);
    }
  }

  /// ///----------------------------------------------------  DIALOGS~~~~~##################--------------------------------------------


  //AudioCache audioCache = AudioCache();
  //AudioPlayer advancedPlayer = AudioPlayer();
  final player = AudioPlayer();
  Future p1() async {
    stopplay();
    await player.setAsset('assets/medias/lecon5/radis.mp3');
    await player.play();
  }
  Future p2() async {
    stopplay();
    await player.setAsset('assets/medias/lecon5/dattes.mp3');
    await player.play();
  }

  Future stopplay() async {
    await player.stop();
  }
  bool isRightSara=false;
  bool isRightRira=false;
  bool isRightEllerit=false;
  bool isRightElleRira=false;
  int vrai=0;

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
          content: Text("Lisez la page 40 du Syllabaire. La première image représente des «radis». Le radis est une racine comestible originaire d’Asie mineure", style:TextStyle(color:  Colors.black54),),
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
              // stopplay();
              setState(() {
                Navigator.of(context).pop(true);
              });
            },),
            IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {
             // if(isRightRira && vrai==1){
                setState(() {
                  Navigator.of(context).pushNamed('/page2lc5');
                 /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Page2lc5()));*/
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
        title: new TextUtils("LEÇON 5"),
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
     LayoutBuilder(
       builder: (BuildContext context, BoxConstraints constraints) {
         //to have responsive design
         if (constraints.maxWidth > 350) {
           return _buildWideContainers();
         } else {
           return _buildNormalContainer();
         }
       },
     ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.panorama_fish_eye), onPressed: () {
        if(isRightEllerit && vrai==1){
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
              Navigator.of(context).pushNamed('/page2lc5');
              /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Page2lc5()));*/
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
              // btnOkOnPress: () {  Navigator.of(context).pop();},
           //   btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
            ..show();

        }

      },),
      bottomNavigationBar: makeBottom,


    );
  }

Widget _buildWideContainers(){
  double hautimg=MediaQuery.of(context).size.height*0.2;
  double largimg=MediaQuery.of(context).size.width*0.2;
  return SafeArea(
      child: SingleChildScrollView(
        child:new Center(
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
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              //icon numero de question
                              Icon(Icons.looks_one, color:Color.fromRGBO(38, 153, 251, 1.0), size: 40.0),
                              Text("Écoutez et répétez les sons.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold,fontSize: 17.0),),
                              //Question/consigne

                            ],

                          ) ,
                          Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Card(
                                      elevation: 0.0,
                                      child: new Container(
                                          height: hautimg,
                                          width: largimg,
                                          child: Image.asset("assets/medias/lecon5/radis.png")
                                      ),

                                    ),

                                    //photo
                                    /// nom image
                                    Ink(
                                      width: 90.0,
                                      height: 20.0,
                                      decoration: ShapeDecoration(
                                        color: Color.fromRGBO(239, 243, 246, 1.0),


                                        shape: ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          /// side: BorderSide(color: Colors.black),
                                        ),
                                      ),

                                      child:  Text("radis", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                    ),
                                    /// nom image
                                    //icone de son
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
                                        onPressed: () => p1(),
                                      ),
                                    ),
                                  ],

                                ) ,
                                Row(
                                  /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Card(
                                      elevation: 0.0,
                                      child: new Container(
                                          height: hautimg,
                                          width: largimg,
                                          child: Image.asset("assets/medias/lecon5/dattes.png")
                                      ),

                                    ),

                                    //photo
                                    /// nom image
                                    Ink(
                                      width: 90.0,
                                      height: 20.0,
                                      decoration: ShapeDecoration(
                                        color: Color.fromRGBO(239, 243, 246, 1.0),


                                        shape: ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          /// side: BorderSide(color: Colors.black),
                                        ),
                                      ),

                                      child:  Text("dattes", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                    ),
                                    /// nom image
                                    //icone de son
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
                                        onPressed: () => p2(),
                                      ),
                                    ),
                                    //photo
                                    //icone de son

                                  ],

                                ) ,
                              ],
                            ),
                          )

                        ],
                      )
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
                                Icon(Icons.looks_two, color:Color.fromRGBO(38, 153, 251, 1.0), size: 40.0),
                                //Question/consigne
                                Text("Lisez et choisissez le mot", style: TextStyle(color: Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 17.0),),
                                _iconDisplay(),

                              ]),
                          Center(
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //Text('Badges:'),
                                  // for (int i = 0; i < 5; i++)
                                  Text("correspondant à l'image.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                ],
                              )


                          ),
                          Card(
                            elevation: 0.0,
                            child: new Container(
                                height: hautimg,
                                width: largimg,
                                child: Image.asset("assets/medias/lecon5/dattes.png")
                            ),

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: 150, height: 60),
                                child:ElevatedButton(
                                  //elevation:2.0,
                                  style: ElevatedButton.styleFrom(
                                      primary:isRightSara? Color.fromRGBO(154, 254, 129, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        //color:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      )),
                                  child: TextUtils("dattes", color: Color.fromRGBO(142, 156, 168, 1.0),fontSize: 16.0),
                                  onPressed:(){
                                    setState(() {
                                      vrai=1;
                                      isRightElleRira=true;
                                      isRightEllerit=true;
                                      isRightRira=true;
                                      isRightSara=true;
                                    });
                                  },

                                ),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: 150, height: 60),
                                child:ElevatedButton(
                                  //elevation:2.0,
                                  style: ElevatedButton.styleFrom(
                                      primary:isRightRira? Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        //color:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      )),
                                  child: TextUtils("Sara", color: Color.fromRGBO(142, 156, 168, 1.0),fontSize: 16.0),
                                  onPressed:(){
                                    setState(() {

                                      isRightElleRira=true;
                                      isRightEllerit=true;
                                      isRightRira=true;
                                      isRightSara=true;
                                    });
                                  },

                                ),
                              ),



                            ],


                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: 150, height: 60),
                                child:ElevatedButton(
                                  //elevation:2.0,
                                  style: ElevatedButton.styleFrom(
                                      primary:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        //color:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      )),
                                  child: TextUtils("tisse", color: Color.fromRGBO(142, 156, 168, 1.0),fontSize: 16.0),
                                  onPressed:(){
                                    setState(() {
                                      isRightElleRira=true;
                                      isRightEllerit=true;
                                      isRightRira=true;
                                      isRightSara=true;
                                    });
                                  },

                                ),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: 150, height: 60),
                                child:ElevatedButton(
                                  //elevation:2.0,
                                  style: ElevatedButton.styleFrom(
                                      primary:isRightElleRira? Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        //color:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      )),
                                  child: TextUtils("radis", color: Color.fromRGBO(142, 156, 168, 1.0),fontSize: 16.0),
                                  onPressed:(){
                                    setState(() {
                                      isRightElleRira=true;
                                      isRightEllerit=true;
                                      isRightRira=true;
                                      isRightSara=true;
                                    });
                                  },

                                ),
                              ),



                            ],

                          ) ,
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
        ),));
}

Widget _buildNormalContainer(){
  double hautimg=MediaQuery.of(context).size.height*0.2;
  double largimg=MediaQuery.of(context).size.width*0.2;
  return SafeArea(
      child: SingleChildScrollView(
        child:new Center(
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
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              //icon numero de question
                              Icon(Icons.looks_one, color:Color.fromRGBO(38, 153, 251, 1.0), size: 40.0),
                              Text("Écoutez et répétez les sons.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold,fontSize: 17.0),),
                              //Question/consigne

                            ],

                          ) ,
                          Container(
                            child: Column(
                              children: <Widget>[
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Card(
                                      elevation: 0.0,
                                      child: new Container(
                                          height: hautimg,
                                          width: largimg,
                                          child: Image.asset("assets/medias/lecon5/radis.png")
                                      ),

                                    ),

                                    //photo
                                    /// nom image
                                    Ink(
                                      width: 90.0,
                                      height: 20.0,
                                      decoration: ShapeDecoration(
                                        color: Color.fromRGBO(239, 243, 246, 1.0),


                                        shape: ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          /// side: BorderSide(color: Colors.black),
                                        ),
                                      ),

                                      child:  Text("radis", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                    ),
                                    /// nom image
                                    //icone de son
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
                                        onPressed: () => p1(),
                                      ),
                                    ),
                                  ],

                                ) ,
                                Column(
                                  /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Card(
                                      elevation: 0.0,
                                      child: new Container(
                                          height: hautimg,
                                          width: largimg,
                                          child: Image.asset("assets/medias/lecon5/dattes.png")
                                      ),

                                    ),

                                    //photo
                                    /// nom image
                                    Ink(
                                      width: 90.0,
                                      height: 20.0,
                                      decoration: ShapeDecoration(
                                        color: Color.fromRGBO(239, 243, 246, 1.0),


                                        shape: ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          /// side: BorderSide(color: Colors.black),
                                        ),
                                      ),

                                      child:  Text("dattes", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                    ),
                                    /// nom image
                                    //icone de son
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
                                        onPressed: () => p2(),
                                      ),
                                    ),
                                    //photo
                                    //icone de son

                                  ],

                                ) ,
                              ],
                            ),
                          )

                        ],
                      )
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
                                Icon(Icons.looks_two, color:Color.fromRGBO(38, 153, 251, 1.0), size: 40.0),
                                //Question/consigne
                                Text("Lisez et choisissez le mot", style: TextStyle(color: Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 17.0),),
                                _iconDisplay(),

                              ]),
                          Center(
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //Text('Badges:'),
                                  // for (int i = 0; i < 5; i++)
                                  Text("correspondant à l'image.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                ],
                              )


                          ),
                          Card(
                            elevation: 0.0,
                            child: new Container(
                                height: hautimg,
                                width: largimg,
                                child: Image.asset("assets/medias/lecon5/dattes.png")
                            ),

                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: 150, height: 60),
                                child:ElevatedButton(
                                  //elevation:2.0,
                                  style: ElevatedButton.styleFrom(
                                      primary:isRightSara? Color.fromRGBO(154, 254, 129, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        //color:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      )),
                                  child: TextUtils("dattes", color: Color.fromRGBO(142, 156, 168, 1.0),fontSize: 16.0),
                                  onPressed:(){
                                    setState(() {
                                      vrai=1;
                                      isRightElleRira=true;
                                      isRightEllerit=true;
                                      isRightRira=true;
                                      isRightSara=true;
                                    });
                                  },

                                ),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: 150, height: 60),
                                child:ElevatedButton(
                                  //elevation:2.0,
                                  style: ElevatedButton.styleFrom(
                                      primary:isRightRira? Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        //color:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      )),
                                  child: TextUtils("Sara", color: Color.fromRGBO(142, 156, 168, 1.0),fontSize: 16.0),
                                  onPressed:(){
                                    setState(() {

                                      isRightElleRira=true;
                                      isRightEllerit=true;
                                      isRightRira=true;
                                      isRightSara=true;
                                    });
                                  },

                                ),
                              ),



                            ],


                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: 150, height: 60),
                                child:ElevatedButton(
                                  //elevation:2.0,
                                  style: ElevatedButton.styleFrom(
                                      primary:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        //color:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      )),
                                  child: TextUtils("tisse", color: Color.fromRGBO(142, 156, 168, 1.0),fontSize: 16.0),
                                  onPressed:(){
                                    setState(() {
                                      isRightElleRira=true;
                                      isRightEllerit=true;
                                      isRightRira=true;
                                      isRightSara=true;
                                    });
                                  },

                                ),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: 150, height: 60),
                                child:ElevatedButton(
                                  //elevation:2.0,
                                  style: ElevatedButton.styleFrom(
                                      primary:isRightElleRira? Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        //color:isRightEllerit?Color.fromRGBO(253, 134, 152, 1.0): Color.fromRGBO(239, 243, 246, 1.0),
                                      )),
                                  child: TextUtils("radis", color: Color.fromRGBO(142, 156, 168, 1.0),fontSize: 16.0),
                                  onPressed:(){
                                    setState(() {
                                      isRightElleRira=true;
                                      isRightEllerit=true;
                                      isRightRira=true;
                                      isRightSara=true;
                                    });
                                  },

                                ),
                              ),



                            ],

                          ) ,
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
        ),));

}


}
