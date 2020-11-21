part of 'main.dart';


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
            color: Colors.amber[600],
            child: Padding(
              padding: EdgeInsets.all(width*0.05),
              child: Text(
                  "The Mehek Box started simply. I was sitting in choir rehearsal in 8th grade, and Joe, our director, was teaching us about counting rhythms. He kept using analogies about a certain number of notes \'fitting\' into the measure, but it was hard to visually grasp with sheet music notation. So, on the back of my book, I doodled a simple sketch of what would become the physical Mehek Box. At that point, my \'why\' was simple- I had an idea to make my life easier, and I wanted to try and make it."
                  "\n"
                  "\nI went home that night and tried to make it, folding construction paper carefully to make little cubes of different lengths that represented notes of different durations. It was fiddly, and hard, and I gave up. But 2 years later, at a 3D-printing summer camp, I remembered my old idea, and my new tools worked well in bringing it to life. Thus I made the first prototype of the Mehek Box, which I immediately brought back to my choir. They started using it with younger members, and really enjoyed it. I would print a few more for them when they needed, and I thought my \'why\' was fulfilled, that my journey was over."
                  "\n"
                  "\nAt the end of the year, I was taking an Industrial Design course at school, and our final project had to have something to do with the senses. Again, after putting the idea away, I used a new set of tools to make the Mehek Box anew. Over a few months, I taught myself musical Braille notation and CNC machining to make a wooden Mehek Box, with Braille engraved onto the surface of each block."
                  "\n"
                  "\nI didn\'t think anyone would ever use it, to be honest. It was a cool project for me, and I learned a lot, but what did I know about what a blind student needed? Nothing. But when a music therapist told me it could be useful to kids with disabilities, I realized that even though I knew nothing, they did. They could help me, and they thought I could help students with disabilities. My \'why\' was shifting, from creativity and design to accessibility and inclusivity."
                  "\n"
                  "\nBut first, I had to learn more. I got serious about educating myself. I volunteered as a music therapy camp counselor, using music education to foster social skills in students with disabilities. I consulted with a Braille educator, and started to develop my own Braille rhythmic shorthand. I even spent 6 months researching and writing a paper on music's impact on the brain, specifically in forming alternate neural pathways to social, motor, language, and emotional skills for students with disabilities. Finally, I took a course on Accessible Design from the University of Illinois at Urbana-Champaign. My \'why\' became clear- bringing universal design to music, by making educational tools that were multisensory. It was early February, 2020, and I couldn't wait for the summer to market my physical product to new choirs and work with users with disabilities to test and improve the product."
                  "\n"
                  "\nWell. We all know what happened in March. As filament companies switched over to PPE production, and choirs shifted rehearsals online, I realized that a physical product didn\'t make sense in a newly-digital world. I had to shift gears. From the beginning, I was opposed to an app- why add more screens to a music classroom? Wasn't the point that the Mehek Box was tactile? But the pandemic forced me to reconsider, and that ended up being a good thing. While you couldn\'t feel the box on a mobile app, there was one thing you could feel- vibration. Not only that, an app could also play audio. I realized that by making an app that was accessibly designed, and incorporating multisensory means of representation and engagement, the app would become even more disability-inclusive than the physical product. Plus, I had seen my product help students actively engage and learn in my own choir. If I could create a virtual version, I could help dozens of choirs struggling to redesign their programs."
                  "\n"
                  "\nSo in the past 6 months, I\’ve developed an app and web version of the tool. The app and site are tactile, auditory, and visual, using sound, vibration, and images to convey the rhythm. I\’m working with schools and choirs across the country to design customized versions of the Mehek Box website. These websites will be tested with over 1000 music students, abled and disabled. You can check out the general version above, by clicking the APP button. Now, my \'why\' includes not only disability-accessibility, but user accessibility. More students are using the website than I would ever be able to give the physical product to at this point. Ultimately, through this journey I\'ve figured out a new \'why\' for my product, and maybe a new \'why\' for myself, too.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
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