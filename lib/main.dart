import 'package:channel_travel_app/second.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget {
  MyMainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(right: 25.0, top: 35.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.menu, color: Colors.black, size: 40.0,)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
              child: Text("Book unique homes and experiences", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
                fontSize: 30.0,
                letterSpacing: 0.5,
              ),),
            ),

            Padding(
              padding: const EdgeInsets.only(top :25.0, left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60.0, right: 60.0, top: 25.0, bottom: 25.0),
                      child: Text("Hotels", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                        fontSize: 18.0,
                      ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60.0, right: 60.0, top: 25.0, bottom: 25.0),
                      child: Text("Flights", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                        fontSize: 18.0,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration : BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.lightBlue.withOpacity(0.3),
    ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(Icons.location_on, color: Colors.lightBlue,),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Text("Where", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),)
                      ],
                    ),

                    SizedBox(height: 10.0,),
                    Divider(
                      thickness: 1.0,
                    ),
                    SizedBox(height: 10.0,),

                    Row(
                      children: <Widget>[
                        Container(
                          decoration : BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.lightBlue.withOpacity(0.3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(Icons.date_range, color: Colors.lightBlue,),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Text("Check in - Check out", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),)
                      ],
                    ),

                    SizedBox(height: 10.0,),
                    Divider(
                      thickness: 1.0,
                    ),
                    SizedBox(height: 10.0,),

                    Row(
                      children: <Widget>[
                        Container(
                          decoration : BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.lightBlue.withOpacity(0.3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(Icons.person, color: Colors.lightBlue,),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Text("1 Adult, 0 Children, 1 Room", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),)
                      ],
                    ),

                    SizedBox(height: 10.0,),
                    Divider(
                      thickness: 1.0,
                    ),
                    SizedBox(height: 10.0,),

                    Container(
                      width: 360.0,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text("Search", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),

            SizedBox(height: 25.0,),

            Padding(
              padding: const EdgeInsets.only(left:25.0, right: 25.0),
              child: Text("Popular places", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Nunito',
                letterSpacing: 0.5,
                fontSize: 24.0
              ),),
            ),

            SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.only(left:25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("assets/amsterdam.png", height: 100.0, width: 100.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Amsterdam", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito'
                      ),
                      ),
                      SizedBox(height: 5.0,),
                      Text("12,203 properties", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.arrow_forward, color: Colors.black,),
                    ),
                  )

                ],
              ),
            ),

            SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.only(left:25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("assets/paris.png", height: 100.0, width: 100.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Eiffel Tower, Paris", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito'
                      ),
                      ),
                      SizedBox(height: 5.0,),
                      Text("15, 475 properties", style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Second()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(Icons.arrow_forward, color: Colors.black,),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
          ],
        ),
      ),

    );
  }
}