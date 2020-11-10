part of 'main.dart';



class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center (
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: width*0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "What is The Mehek Box?",
                                    style: TextStyle(
                                        fontFamily: 'Northwest',
                                        fontSize: width * 0.04,
                                        color: Colors.white
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage('graphics/Box-Diagram.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ]
                              ),
                            ),
                            Container (
                              width: width*0.4,
                              child: Text (
                                  "The Mehek Box is a physical music education tool, to help music students visualize the duration of rhythmic notes within the space of a measure. Basically, it’s a 3D-printed box representing a measure, with blocks of different lengths for each rhythmic note. You can move around note blocks to fill up the measure in a tangible way, and really understand the comparative duration of each note."
                                "\n\nWhen the pandemic left music teachers asking hard questions about how to shift online, I realized the box and I might be able to give them an answer. I had seen my product help students actively engage and learn in my own choir. If I could create a virtual version, I could help dozens of choirs struggling to redesign their programs. So in the past 6 months, I’ve developed an app and web version of the tool, which you can check out by clicking the App button above, or searching Mehek Box on the Google Play store.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
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
              padding: const EdgeInsets.all(16.0),
              child: Center (
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        "Our Mission",
                        style: TextStyle(
                            fontFamily: 'Northwest',
                            fontSize: width * 0.08,
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
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
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