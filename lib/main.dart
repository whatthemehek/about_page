import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:math';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';

part 'gooey.dart';
part 'about.dart';
part 'mystory.dart';

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
        '/mystory': (context) => MyStoryPage(),
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
                    FlatButton(
                      child: new Text('About'),
                      onPressed: navigate(context, '/about'),
                    ),
                    FlatButton(
                      child: Text('My Story'),
                      onPressed: navigate(context, '/mystory'),
                    ),
                    RaisedButton(
                      onPressed: _launchURL,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient:LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text(
                            'App',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ],
          ),
        ],
      ),
      // Shadow under App Bar
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