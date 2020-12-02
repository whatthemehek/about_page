part of 'main.dart';

final List<String> screenshots = <String>['graphics/Screenshot-1.png', 'graphics/Screenshot-2.png'];


YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'PqXyXdxV1Es',
  params: YoutubePlayerParams(
    autoPlay: false,
    startAt: Duration(seconds: 0),
    showControls: true,
    showFullscreenButton: true,
  ),
);

class WhatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView (
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.amber[800],
            child: Center(
                child: Text(
                  'What\'s a Mehek Box?',
                  style: TextStyle(
                      fontFamily: 'Northwest',
                      fontSize: width * 0.1,
                      color: Colors.white
                  ),
                )
            ),
          ),
          Container(
              color: Colors.amber[600],
              child: Padding (
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center (
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: width*0.4,
                              child: Image(
                                image: AssetImage('graphics/Box-Diagram.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container (
                              width: width*0.4,
                              child: Text (
                                "The Mehek Box is a physical music education tool, to help music students visualize the duration of rhythmic notes within the space of a measure. Basically, it’s a 3D-printed box representing a measure, with blocks of different lengths for each rhythmic note. You can move around note blocks to fill up the measure in a tangible way, and really understand the comparative duration of each note."
                                    "\n\nWhen the pandemic left music teachers asking hard questions about how to shift online, I realized the box and I might be able to give them an answer. I had seen my product help students actively engage and learn in my own choir. If I could create a virtual version, I could help dozens of choirs struggling to redesign their programs. So in the past 6 months, I’ve developed an app and web version of the tool, which you can check out by clicking the App button above, or searching Mehek Box on the Google Play store.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ]
                      )
                  )
              )
          ),
          Container(
            height: 500,
            color: Colors.amber[400],
            child: Padding (
              padding: EdgeInsets.all(16.0),
              child: YoutubePlayerIFrame(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),
          ),
          Container(
              color: Colors.amber[300],
              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "The Mehek Box In Action",
                    style: TextStyle(
                        fontFamily: 'Northwest',
                        fontSize: width * 0.06,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.separated (
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      itemCount: screenshots.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: width*0.6,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: AssetImage(screenshots[index]),
                                  width: width*0.5,
                                  fit: BoxFit.fill,
                                ),
                              ]
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>  Container(
                        width: width*0.1,
                      ),
                    )
                  )

                ]
              )
          ),
//          Container(
//            height: 500,
//            color: Colors.amber[200],
//            child: const Center(child: Text('Entry C')),
//          ),
//          Container(
//            height: 500,
//            color: Colors.amber[100],
//            child: const Center(child: Text('Entry C')),
//          ),
        ],
      ),
    );
  }
}