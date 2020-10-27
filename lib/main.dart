import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:math';

part 'gooey.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hi Mom",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => LandingPage(),
      }
    );
  }
}

class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        child: GooeyCarousel(),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final double appBarHeight = 100.0;
  @override
  get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppBar(
            title: SizedBox(
                height: 56,
                child: Image(image: AssetImage('graphics/Title-Logo-Resized.png')),
            ),
            elevation: 0.0,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(),
            actions: <Widget>[
              ButtonBar (
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text('Hello'),
                      onPressed: null,
                    ),
                    new RaisedButton(
                      child: new Text('Hi'),
                      onPressed: null,
                    ),
                  ]
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75))
        ],
        color: Colors.white,
      ),
    );
  }
}


