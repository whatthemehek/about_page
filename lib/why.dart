part of 'main.dart';

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'PqXyXdxV1Es',
  params: YoutubePlayerParams(
    autoPlay: false,
    startAt: Duration(seconds: 0),
    showControls: true,
    showFullscreenButton: true,
  ),
);



class WhyPage extends StatelessWidget{
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
                  'Why Does the Mehek Box Exist?',
                  style: TextStyle(
                      fontFamily: 'Northwest',
                      fontSize: width * 0.08,
                      color: Colors.white
                  ),
                )
            ),
          ),
          Container(
            height: 500,
            color: Colors.amber[600],
            child: Padding (
              padding: EdgeInsets.all(16.0),
              child: YoutubePlayerIFrame(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),
          ),
          Container(
              color: Colors.amber[400],
              child: Padding (
                  padding: const EdgeInsets.all(16.0),
                  child: Center (
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Our Mission",
                              style: TextStyle(
                                  fontFamily: 'Northwest',
                                  fontSize: width * 0.06,
                                  color: Colors.white
                              ),
                            ),
                            Container (
                              width: width*0.4,
                              child: Text (
                                "1. To keep learning"
                                    "\n\n2. To create multi-sensory tools to help students learn musical concepts"
                                    "\n\n3. To prioritize accessibility and universal design"
                                    "\n\n4. To challenge the music community to prioritize accessibility and universal design"
                                    "\n\n5. To center the perspectives and expertise of my users in product design, especially when designing for users with disabilities",
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
//          Container(
//            height: 500,
//            color: Colors.amber[300],
//            child: const Center(child: Text('Entry C')),
//          ),
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