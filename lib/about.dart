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
    double width = MediaQuery.of(context).size.width;
    double c_width = MediaQuery.of(context).size.width*0.5;
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView (
        children: <Widget>[
          Container(
            height: 500,
            color: Colors.amber[800],
            child: Center(
                child: Text(
                  'About the Mehek Box',
                  style: TextStyle(
                      fontFamily: 'Northwest',
                      fontSize: width * 0.1,
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
            height: 500,
            color: Colors.amber[400],
            child: Padding (
              padding: const EdgeInsets.all(16.0),
              child: Center (
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: AssetImage('graphics/Headshot.jpg')),
                    Container (
                      width: c_width,
                      child: Text (
                          "I am a high school senior at the Overlake School, interested in technology, product design, and software development! I have a passion for universal design, especially in the field of music education, which led me to develop my innovative tool, the Mehek Box. I'm also active in social justice work at Overlake, leading the IMPACT Club to write anti-racism webinars, push for curriculum reform, and bring a focus on cultural competency into faculty hiring. I hope to continue working on socially-conscious, design-forward projects, and keep learning! ",
                          textAlign: TextAlign.left
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