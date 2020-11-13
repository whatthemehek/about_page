part of 'main.dart';



class WhoPage extends StatelessWidget{
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
                  'Who\'s Mehek?',
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
                            Container(
                              width: width*0.4,
                              child: Image(
                                image: AssetImage('graphics/Headshot.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container (
                              width: width*0.4,
                              child: Text (
                                "I am a high school senior at the Overlake School, interested in technology, product design, and software development! I have a passion for universal design, especially in the field of music education, which led me to develop my innovative tool, the Mehek Box. I'm also active in social justice work at Overlake, leading the IMPACT Club to write anti-racism webinars, push for curriculum reform, and bring a focus on cultural competency into faculty hiring. I hope to continue working on socially-conscious, design-forward projects, and keep learning! ",
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