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



class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView (
        children: <Widget>[
          Container(
            height: 500,
            color: Colors.amber[800],
            child: const Center(
                child: Text(
                  'About the Mehek Box',
                  style: TextStyle(fontFamily: 'Northwest', fontSize: 150, color: Colors.white),
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
//          Container(
//            height: 500,
//            color: Colors.amber[400],
//            child: const Center(child: Text('Entry C')),
//          ),
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