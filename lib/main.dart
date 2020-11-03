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
        '/about': (context) => AboutPage(),
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

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView (
        children: <Widget>[
          Container(
            height: 500,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 500,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 500,
            color: Colors.amber[400],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 500,
            color: Colors.amber[300],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 500,
            color: Colors.amber[200],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 500,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}

Function navigate(BuildContext context, String path) {
  return () {
    Navigator.pushNamed(context, path);
  };
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
            title: IconButton(
                iconSize: 175,
                icon: Image(image: AssetImage('graphics/Title-Logo-Resized.png')),
                onPressed: navigate(context, "/"),
            ),
            elevation: 0.0,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(),
            actions: <Widget>[
              ButtonBar (
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text('About'),
                      onPressed: navigate(context, '/about'),
                    ),
                    new RaisedButton(
                      child: new Text('Media'),
                      onPressed: null,
                    ),
                    new RaisedButton(
                      child: new Text('App'),
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


