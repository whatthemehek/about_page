part of 'main.dart';



class WhoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                                "I just graduated with my B.S in EECS and M.Eng in AI, from the Massachusetts Institute of Technolog. I am interested in spatial computing, accessible technology, and creating multimodal experiences. I have a passion for universal design, especially in the field of music education, which led me to develop my innovative tool, the Mehek Box. In high school, I was social justice work, leading the IMPACT Club to write anti-racism webinars, push for curriculum reform, and bring a focus on cultural competency into faculty hiring. At MIT, I applied that same multidisciplinary approach in leading VR/AR@MIT and in my research in the MIT Immersion Lab and MIT Media Lab. I hope to continue working on socially-conscious, design-forward projects, and ultimately, keep learning! ",
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
              color: Colors.amber[400],
              child: Padding (
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center (
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                "My Mentors",
                                style: TextStyle(
                                    fontFamily: 'Northwest',
                                    fontSize: width * 0.06,
                                    color: Colors.white
                                ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 0.4*width,
                                  child: Column(
                                    children: [
                                      Text(
                                          "Joseph Crnko",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                      ),
                                      SizedBox(height: height*0.05),
                                      SizedBox(
                                        height: height*0.4,
                                        child: Image(
                                          image: AssetImage("graphics/J-Crnko.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(height: height*0.05),
                                      Text(
                                          "Seattle Symphony Choral Director, NWChoirs Director",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                      )
                                    ]
                                  ),
                                ),
                                Container(
                                  width: 0.4*width,
                                  child: Column(
                                      children: [
                                        Text(
                                            "Kim McCord",
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                        ),
                                        SizedBox(height: height*0.05),
                                        SizedBox(
                                          height: height*0.4,
                                          child: Image(
                                            image: AssetImage("graphics/K-McCord.jpg"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(height: height*0.05),
                                        Text(
                                            "Professor Emeritus of music education, ISME Board Member, Founder of NAFME Special Research Interest Group on Children with Exceptionalities",
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                        )
                                      ]
                                  ),
                                )
                              ]
                            ),
                          ]
                      )
                  )
              )
          ),
////          Container(
////            height: 500,
////            color: Colors.amber[300],
////            child: const Center(child: Text('Entry C')),
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
