import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exerfrancais/text_utils.dart';
//import 'package:syllabaire/acceuillumiere.dart';
//import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:syllabaire/lecon1/l1page2.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'dart:async';
//import 'package:audioplayers/audioplayers.dart';
class Apropos extends StatefulWidget
{

  @override
  _ProposState createState()=>_ProposState();

}

class _ProposState extends State<Apropos>
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



  ///----------------------------------------------------  DIALOGS~~~~~##################--------------------------------------------
  _iconDisplay(){
    if(isRightElleRira) {
      //bool readStatus = _notes[index].getReadState;
      return Icon(((isRightElleRira && vrai == 1) ? Icons.check_circle : Icons
          .cancel),
        color: (isRightElleRira && vrai == 1) ? Colors.green : Colors.red,);
    }
    else{
      return Icon(Icons.arrow_drop_down, color: Colors.white54,);
    }
  }

  /// ///----------------------------------------------------  DIALOGS~~~~~##################--------------------------------------------

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
        Future.delayed(Duration(seconds: 5), () {
          Navigator.of(context).pop(true);
        });

        return AlertDialog(
          backgroundColor: Colors.white70,
          title: Text("Un peu d'aide?", style: TextStyle(color: Colors.blueAccent),),
          content: Text("Lisez la page 32 du Syllabaire. La première image représente «Sara». Une jeune femme qui sourit beaucoup. Elle aime rire. Sara rira. «Elle rira»", style:TextStyle(color:  Colors.black54),),
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


  @override
  Widget build(BuildContext context) {
    double size=MediaQuery.of(context).size.width*0.5;
    double hautimg=MediaQuery.of(context).size.height*0.3;
    double largimg=MediaQuery.of(context).size.width*0.5;
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
            IconButton(icon: Icon(Icons.home), onPressed: () {

              setState(() {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/listpage', ModalRoute.withName('/'));
              });
            },),
            IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {
              // if(isRightElleRira && vrai==1){
              setState(() {
                Navigator.of(context).pushNamed('/page2lc1');
                /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Page2lc1()));*/
              });}
              //  }
              ,),
          ],
        ),
      ),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new TextUtils("À propos "),
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
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Center(
                                  child:
                                  Card(
                                    elevation: 0.0,
                                    child: new Container(
                                        height: hautimg,
                                        width: largimg,
                                        child: Image.asset("assets/libeninlogo.png")
                                    ),

                                  ),
                                  /// nom image

                                  /// nom image
                                  //photo
                                  //icone de son




                                ),
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  //icon numero de question
                                  ///Icon(Icons.looks_one, color:Color.fromRGBO(38, 153, 251, 1.0), size: 40.0),
                                  ///Literacy Benin is a Non-Governmental
                                  Text("Literacy Benin is a Non-Governmental", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold,fontSize: 16.0),),
                                  //Question/consigne

                                ],

                              ) ,
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text(" Non-Profit Organization which aims", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text(" to equip churches as well as eccle-", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("siastical and para-ecclesiastical orga-", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("nizations with teaching materials, es-", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("pecially primers with biblical content ", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("languages andbooks for learning foreign", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("languages such as French.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("Address: BP 215, Parakou, Benin. ", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("E-mail: literacybenin@gmail.com ", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("Phone: Call : +(229) 95 71 57 03", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),


                            ],
                          )
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(20.0),
                      ),
                      ///deuxieme conteneur
                      Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Center(
                                  child:
                                  Card(
                                    elevation: 0.0,
                                    child: new Container(
                                        height: hautimg,
                                        width: largimg,
                                        child: Image.asset("assets/leitulsalogo.png")
                                    ),

                                  ),
                                  /// nom image

                                  /// nom image
                                  //photo
                                  //icone de son




                                ),
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  //icon numero de question
                                  ///Icon(Icons.looks_one, color:Color.fromRGBO(38, 153, 251, 1.0), size: 40.0),
                                  Text(" Literacy Benin is affiliated with LEI", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold,fontSize: 17.0),),
                                  //Question/consigne

                                ],

                              ) ,
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("Tulsa USA and all other organizations", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("affiliated with this parent organization.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("Address: 1800 S. Jackson Ave.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("Tulsa, OK 74107 United States.", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("E-mail: info@LiteracyInternational.net ", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),
                              Center(
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //Text('Badges:'),
                                      // for (int i = 0; i < 5; i++)
                                      Text("Phone: Call : 918-585-3826", style: TextStyle(color:Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize:16.0),),
                                    ],
                                  )


                              ),


                            ],
                          )
                      ),


                      CustomPaint(
                        painter: CurvePainter(),
                      ),
                    ]

                )
            ),)),



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
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}