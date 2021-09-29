import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("KINASIH HIYA AHSAN",
            style: new TextStyle(
                fontSize: 24.0, fontWeight: FontWeight.bold
            ),),
          backgroundColor: Colors.black,
          centerTitle: false,
        ),
        //backgroundColor: Colors.blue[100],
        body: Container(

          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: GridView.count(
              crossAxisCount: 3,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        color: Colors.blueGrey
                    ),
                    child: Center(
                      child: Text("1", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        color: Colors.greenAccent
                    ),
                    child: Center(
                      child: Text("2", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        color: Colors.red
                    ),
                    child: Center(
                      child: Text("3", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        color: Colors.deepOrange
                    ),
                    child: Center(
                      child: Text("4", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        color: Colors.lightGreenAccent
                    ),
                    child: Center(
                      child: Text("5", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        color: Colors.cyan
                    ),
                    child: Center(
                      child: Text("6", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );  }
}