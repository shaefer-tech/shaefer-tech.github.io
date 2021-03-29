import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exerfrancais/provider/DarkThemeProvider.dart';
import 'package:exerfrancais/Styles/DarkThemeStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'lecon1/l1page2.dart';
import 'lecon1/l1page3.dart';
import 'lecon1/l1page4.dart';
import 'lecon1/l1page5.dart';
import 'lecon1/l1page6a.dart';
import 'lecon1/l1page7.dart';
import 'lecon2/l2page1.dart';
import 'lecon2/l2page2.dart';
import 'lecon2/l2page3.dart';
import 'lecon2/l2page4.dart';
import 'lecon2/l2page5.dart';
import 'lecon2/l2page6.dart';
import 'lecon2/l2page7.dart';
import 'lecon2/l2page8a.dart';
import 'lecon2/l2page9.dart';
import 'lecon2/l2pageRappel.dart';
import 'lecon3/l3page1.dart';
import 'lecon3/l3page10.dart';
import 'lecon3/l3page2.dart';
import 'lecon3/l3page3.dart';
import 'lecon3/l3page4.dart';
import 'lecon3/l3page5.dart';
import 'lecon3/l3page6.dart';
import 'lecon3/l3page7.dart';
import 'lecon3/l3page8.dart';
import 'lecon3/l3page9a.dart';
import 'lecon3/l3pageRappel.dart';
import 'lecon4/l4page1.dart';
import 'lecon4/l4page10.dart';
import 'lecon4/l4page2.dart';
import 'lecon4/l4page3.dart';
import 'lecon4/l4page4.dart';
import 'lecon4/l4page5.dart';
import 'lecon4/l4page6.dart';
import 'lecon4/l4page7.dart';
import 'lecon4/l4page8.dart';
import 'lecon4/l4page9a.dart';
import 'lecon4/l4pageRappel.dart';
import 'lecon5/l5page1.dart';
import 'lecon5/l5page10.dart';
import 'lecon5/l5page2.dart';
import 'lecon5/l5page3.dart';
import 'lecon5/l5page4.dart';
import 'lecon5/l5page5.dart';
import 'lecon5/l5page6.dart';
import 'lecon5/l5page7.dart';
import 'lecon5/l5page8.dart';
import 'lecon5/l5page9a.dart';
import 'lecon5/l5pageRappel.dart';
import 'model/lesson.dart';
import 'my_route_observer.dart';

import 'package:exerfrancais/lecon1/l1page1.dart';
import 'package:exerfrancais/apropos.dart';
import 'package:exerfrancais/guide.dart';





void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.appPreferences.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
        create: (_) {
          return themeChangeProvider;
        },
        child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, value, Widget child) {
            return MaterialApp(
              title: ' Lumière ',
              navigatorObservers: <NavigatorObserver>[
                MyRouteObserver(),
              ],
              initialRoute: '/listpage',
              //home: SplashScreen(),
              routes: <String, WidgetBuilder>{ //app routes
                //  '/': (BuildContext context) => new  SplashScreen(),
                '/listpage': (BuildContext context) => new  ListPage(),
                '/page1lc1': (BuildContext context) => new  Page1lc1(),
                '/page2lc1': (BuildContext context) => new  Page2lc1(),
                '/page3lc1': (BuildContext context) => new  Page3lc1(),
                '/page4lc1': (BuildContext context) => new  Page4lc1(),
                '/page5lc1': (BuildContext context) => new  Page5lc1(),
                '/page6alc1':(BuildContext context) => new Signature(),
                '/page7lc1': (BuildContext context) => new  Page6lc1success(),

                '/page1lc2': (BuildContext context) => new  Page1lc2(),
                '/page2lc2': (BuildContext context) => new  Page2lc2(),
                '/page3lc2': (BuildContext context) => new  Page3lc2(),
                '/page4lc2': (BuildContext context) => new  Page4lc2(),
                '/page5lc2': (BuildContext context) => new  Page5lc2(),
                '/page6lc2': (BuildContext context) => new Page6lc2(),
                '/page7lc2': (BuildContext context) => new  Page7lc2(),
                '/page8alc2': (BuildContext context) => new  Signaturelc2(),
                '/page9lc2': (BuildContext context) => new  Page6lc2success(),
                '/pageRappelc2': (BuildContext context) => new PageRapelc2(),
                '/page1lc3': (BuildContext context) => new  Page1lc3(),
                '/page2lc3': (BuildContext context) => new  Page2lc3(),
                '/page3lc3': (BuildContext context) => new  Page3lc3(),
                '/page4lc3': (BuildContext context) => new  Page4lc3(),
                '/page5lc3': (BuildContext context) => new  Page5lc3(),
                '/page6lc3': (BuildContext context) => new Page6lc3(),
                '/page7lc3': (BuildContext context) => new  Page7lc3(),
                '/page8lc3': (BuildContext context) => new  Page8lc3(),
                '/page9alc3': (BuildContext context) => new  Signaturelc3(),
                '/page10lc3': (BuildContext context) => new  Page6lc3success(),
                '/pageRappelc3': (BuildContext context) => new PageRapelc3(),
                '/page1lc4': (BuildContext context) => new  Page1lc4(),
                '/page2lc4': (BuildContext context) => new  Page2lc4(),
                '/page3lc4': (BuildContext context) => new  Page3lc4(),
                '/page4lc4': (BuildContext context) => new  Page4lc4(),
                '/page5lc4': (BuildContext context) => new  Page5lc4(),
                '/page6lc4': (BuildContext context) => new Page6lc4(),
                '/page7lc4': (BuildContext context) => new  Page7lc4(),
                '/page8lc4': (BuildContext context) => new  Page8lc4(),
                '/page9alc4': (BuildContext context) => new  Signaturelc4(),
                '/page10lc4': (BuildContext context) => new  Page6lc4success(),
                '/pageRappelc4': (BuildContext context) => new PageRapelc4(),
                '/page1lc5': (BuildContext context) => new  Page1lc5(),
                '/page2lc5': (BuildContext context) => new  Page2lc5(),
                '/page3lc5': (BuildContext context) => new  Page3lc5(),
                '/page4lc5': (BuildContext context) => new  Page4lc5(),
                '/page5lc5': (BuildContext context) => new  Page5lc5(),
                '/page6lc5': (BuildContext context) => new Page6lc5(),
                '/page7lc5': (BuildContext context) => new  Page7lc5(),
                '/page8lc5': (BuildContext context) => new  Page8lc5(),
                '/page9alc5': (BuildContext context) => new  Signaturelc5(),
                '/page10lc5': (BuildContext context) => new  Page6lc5success(),
                '/pageRappelc5': (BuildContext context) => new PageRappelc5(),



                '/apropos': (BuildContext context) => new Apropos(),
                '/guide': (BuildContext context) => new Guide(),

              },
              debugShowCheckedModeBanner: false,
              theme: Styles.themeData(themeChangeProvider.darkTheme, context),
              //home:QrCodeGen(),
              //home:QrCodeGen(),
              // routes: <String, WidgetBuilder>{
              //AGENDA: (BuildContext context) => AgendaScreen(),
              //},
            );
          },
        ),);
  }
}


class ListPage extends StatefulWidget {
  //static const String routeName = '/home';
  // ListPage({Key key, this.title}) : super(key: key);
  final String title= "Lumière - Exercices";

  @override
  _LisPageState createState() => _LisPageState();
}
/// debouncer
class Debouncer{
  final int milliseconds;
  VoidCallback action;
  Timer _timer;
  Debouncer({this.milliseconds});
  run(VoidCallback action){
    if (null != _timer)
    {
      _timer.cancel();
    }
    _timer =Timer(Duration(milliseconds: milliseconds),action);
  }
}
/// debouncer

///CustomPainter

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
///CustomPainter


class _LisPageState extends State<ListPage> {
  Future<bool> _onWillPop() async {

    /*return true*/
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Êtes vous sur?'),
        content: new Text('Voulez-vous quitter Lumière?'),
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
  final _debouncer= Debouncer(milliseconds: 500);
  ///000000000000000000000000000000000000000000000
  List getLessons() {
    return [
      Lesson(
        title: " Exercices - Leçon 1",
        path: "1",
      ),
      Lesson(
        title: " Exercices - Leçon 2",
        path: "2",
      ),
      Lesson(
        title: " Exercices - Leçon 3",
        path: "3",
      ),
      Lesson(
        title: " Exercices - Leçon 4",
        path: "4",
      ),
      Lesson(
        title: " Exercices - Leçon 5",
        path: "5",
      ),
    ];
  }
  ///0000000000000000000000000000000000000000000

  // CurvePainter _curvePainter= new  CurvePainter();
  List lessons;
  List findLessons;


  @override
  void initState() {
    super.initState();
    navigateToLastPage();
    lessons = getLessons();
    findLessons=lessons;




    /* getFileFromUrl("http://www.pdf995.com/samples/pdf.pdf").then((f) {
      setState(() {
        urlPDFPath = f.path;
        print(urlPDFPath);
      });
    });*/
  }
  void navigateToLastPage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lastRoute = prefs.getString('last_route');
    if (lastRoute.isNotEmpty && lastRoute != '/listpage') {
      Navigator.of(context).pushNamed(lastRoute);
    }


  }

  ///createdHeader
  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image:  AssetImage('assets/medias/fitila.png'))),
        child: Stack(children: <Widget>[
          /*Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Lireracy Benin",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))
          ),*/
        ]));
  }
  ///createdHeader


  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
        contentPadding:
        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: Icon(Icons.school, color: Colors.green),
        ),
        title: Text(
          lesson.title,
          style: TextStyle(color: Color.fromRGBO(142, 156, 168, 1.0), fontWeight: FontWeight.bold, fontSize: 19.0),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),


        trailing:
        Icon(Icons.keyboard_arrow_right, color: Colors.blue, size: 30.0),
        onTap: () {
          if (lesson.path == "1") {
            Navigator.of(context).pushNamed('/page1lc1');
            /*Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>

                    Page1lc1()


                ));*/
            // PdfViewPage(pathe: lesson.path)

          }
          if (lesson.path == "2") {
            Navigator.of(context).pushNamed('/page1lc2');
            /* Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>

                        Page1lc2()


                )); */// PdfViewPage(pathe: lesson.path)

          }
          if (lesson.path == "3") {
            Navigator.of(context).pushNamed('/page1lc3');
            /* Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>

                        Page1lc3()


                )); */// PdfViewPage(pathe: lesson.path)

          }
          if (lesson.path == "4") {
            Navigator.of(context).pushNamed('/page1lc4');
            /*Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>

                        Page1lc4()


                ));*/ // PdfViewPage(pathe: lesson.path)

          }
          if (lesson.path == "5") {
            Navigator.of(context).pushNamed('/page1lc5');
            /* Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>

                        Page1lc4()


                )); */// PdfViewPage(pathe: lesson.path)

          }
        }
    );

    Card makeCard(Lesson lesson) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        //decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        decoration: BoxDecoration(color: Color.fromRGBO(231, 238, 242, .9)),
        child: makeListTile(lesson),
      ),
    );
//Container à la place de Expanded
    final makeBody = Column(

      children: <Widget>[
        new Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) //                 <--- border radius here
            ),
          ),
          child:
          Row(
            children: <Widget>[
              Expanded(child:  TextField(
                onChanged:(string){
                  _debouncer.run((){
                    setState(() {
                      findLessons=lessons.where((u)=>(u.title.toLowerCase().contains(string.toLowerCase()))).toList();
                    });
                  });
                },
                //controller: editingController,
                decoration: InputDecoration(
                    focusColor: Colors.redAccent,
                    fillColor: Colors.white,
                    hoverColor: Colors.blue,
                    labelText: "Rechercher",
                    hintText: "Rechercher un exercice",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)))
                ),

              ),),


            ],
          ),
        ),

        Expanded(
          // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: findLessons.length,// itemCount: lessons.length,
            itemBuilder: (BuildContext context, int index) {
              return makeCard(findLessons[index]);//return makeCard(lessons[index]);
            },
          ),
        ),

      ],

    );


    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        //color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListPage()));
              },
            ),

          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(38, 153, 251, 1.0),
      title: Text(widget.title),
      centerTitle: true,
      /*actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],*/
    );
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        backgroundColor: Colors.white,
        appBar: topAppBar,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              _createHeader(),


              ListTile(
                leading: Icon(Icons.home),
                title: Text("LUMIÈRE-EXERCICES", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ListPage()));
                },
              ),

              ListTile(
                leading: Icon(Icons.info),
                title:Text("À propos", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Apropos()));
                },

              ),

              ListTile(
                leading: Icon(Icons.help_outline),
                title:Text("Guide", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Guide()));
                },

              ),








            ],
          ),
        ),
        body: makeBody,
        /*bottomNavigationBar: CustomPaint(
          painter: CurvePainter(),
        ),*/
      ),
    );
  }
}
