import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:math';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';

part 'gooey.dart';
part 'about.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mehek Box",
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
                    new FlatButton(

                      child: new Text('About'),
                      onPressed: navigate(context, '/about'),
                    ),
//                    new RaisedButton(
//                      child: new Text('Media'),
//                      onPressed: null,
//                    ),
                    new FlatButton(
                      child: new Text('App'),
                      onPressed: _launchURL,
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



_launchURL() async {
  const url = 'https://app.mehekbox.com/#/measure';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}