part of 'main.dart';

final List<String> names = <String>["Leah Crews, General Music Teacher, ", "Rebecca Gobel, Adaptive Music Teacher", "Bryonna Koppenhaver, Adaptive Music Teacher", 'Laura Ziegler, Elementary Music Teacher'];
final List<String> pictures = <String>['graphics/L-Crews.jpg', 'graphics/R-Gobel.jpg', 'graphics/B-Koppenhaver.JPG', 'graphics/L-Ziegler.png'];
final List<String> quotes = <String>[
  "I have really enjoyed working with the Mehek Box. This is a great way for students to visually and aurally present rhythms to their students. The students enjoy manipulating rhythms and showing different durations with the boxes. It is a really great way to help them learn!",
  "Mehek is a brilliant upcoming entrepreneur. This is an amazing product to me. Our students can CREATE rhythmic patterns based on their current level to PRACTICE and PERFORM.",
  "The Mehek Box is an innovative, fun, and engaging way for students to understand and practice rhythm while having something clear and concrete. There are different ways for teachers to use this box and many new ideas that Mehek is implementing on regularly. She is easy to work with and eager to learn how her Mehek Box can help students of many different abilities.",
  "The Mehek Box has really helped my students visualize the different lengths of rhythms and has given them the confidence to use more complex and creative combinations of rhythms while composing. It is extremely user friendly and a great resource for both virtual and in-person learning."];
final List<String> places = <String>["Bloomington Public Schools School District 87 ", "USD 259 – Wichita Public Schools, based at Levy Special Education Center", "USD 259 – Wichita Public Schools, based at Levy Special Education Center", "Great Lakes Academy Public Charter Elementary School"];


class WherePage extends StatelessWidget{
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
                  'Where is the Mehek Box used?',
                  style: TextStyle(
                      fontFamily: 'Northwest',
                      fontSize: width * 0.08,
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
                                image: AssetImage('graphics/Usage-Map.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container (
                              width: width*0.4,
                              child: Text (
                                "The website is specifically being tested with students in: "
                                "\n    - Wichita, Kansas "
                                "\n    - Seattle, Washington"
                                "\n    - Bloomington, Illinois"
                                "\n    - Chicago, Illinois",
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
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              itemCount: pictures.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: width*0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(names[index]),
                      Text(places[index]),
                      Image(
                          image: AssetImage(pictures[index]),
                          width: width*0.15,
                          fit: BoxFit.fill,
                      ),
                      Text("\""+quotes[index]+"\""),
                    ]
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>  Container(
                width: width*0.1,
              ),
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