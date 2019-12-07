import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Second(),
    );
  }
}

class Second extends StatefulWidget {
  Second({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[

          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Image.asset("assets/eiffel.png",
                  height: 420.0,
                  width: 420.0),

              Positioned(
                top: 35.0,
                left: 10.0,
                child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 30.0,)),
              ),

              Positioned(
                top: 35.0,
                right: 10.0,
                child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.menu, color: Colors.black, size: 30.0,)),
              ),

              Positioned(
                top: 375.0,
                child: Container(
                  height: 450.0,
                  width: 415.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Eiffel Tower, Paris", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito',
                              fontSize: 30.0,
                            ),
                            ),
                            SizedBox(height: 40.0,),

                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.orange.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          children: <Widget>[
                                            Image.asset("assets/tower.png", height: 50.0, width: 50.0,),
                                            SizedBox(height: 25.0,),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(color: Colors.deepOrangeAccent),
                                                borderRadius: BorderRadius.circular(50.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text("4.7", style: TextStyle(
                                                  color: Colors.black
                                                ),),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 20.0,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("The Eiffel Tower Tour", style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24.0,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(height: 40.0,),
                                    Text("Duration 1 hour", style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20.0
                                    ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      Positioned(
                        top: 290.0,
                        child: Container(
                          height: 300.0,
                          width: 415.0,
                          decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("2,305", style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),),
                                    Text("Properties found", style: TextStyle(
                                      color: Colors.white,
                                    ),)
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: 150.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                        color: Colors.lightBlue[50],
                                      ),
                                      child: Center(
                                        child: Text("See All", style: TextStyle(
                                          color: Colors.blue,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                        ),),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
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