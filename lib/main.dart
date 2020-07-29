import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: deviceSize.height,
              width: deviceSize.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.orange[900],
                    Colors.orange[800],
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 44,
                        fontFamily: 'Arial',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Arial',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(60.0),
                    topRight: const Radius.circular(60.0),
                  ),
                ),
                height: 440,
//                child: TextField(
//                  decoration: InputDecoration(
//                      hintText: 'Email or Phone number'),
//                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
