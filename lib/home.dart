import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Shader headerGradient = const LinearGradient(colors: [
    Color.fromARGB(255, 1, 242, 255),
    Color.fromARGB(255, 33, 170, 97)
  ]).createShader(const Rect.fromLTWH(0, 0, 200, 70));

  final Shader highlightGradient = const LinearGradient(colors: [
    Color.fromARGB(255, 43, 255, 1),
    Color.fromARGB(255, 255, 225, 1)
  ]).createShader(const Rect.fromLTWH(0, 0, 200, 70));

  final Shader overallTextGradient = const LinearGradient(colors: [
    Color(0xff1f005c),
    Color(0xff5b0060),
    Color(0xff870160),
    Color(0xffac255e),
    Color(0xffca485c),
    Color(0xffe16b5c),
    Color(0xfff39060),
    Color.fromARGB(255, 255, 89, 0)
  ]).createShader(const Rect.fromLTWH(0, 0, 200, 70));

  mySpecialization(icon, text) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 115,
      width: 105,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: const Color.fromARGB(255, 30, 31, 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                    foreground: Paint()..shader = highlightGradient,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(168, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: PopupMenuButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          itemBuilder: (context) => [
            PopupMenuItem(
                child: TextButton(
              child: const Text(
                "Projects",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'projects');
              },
            )),
            PopupMenuItem(
                child: TextButton(
              child: const Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'about');
              },
            )),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 19, 16, 16),
              Color.fromARGB(255, 0, 0, 0),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
        child: SlidingSheet(
          color: Colors.black,
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 1.0],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          body: Container(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(40),
                  child: ShaderMask(
                    shaderCallback: (bound) {
                      return const LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                      ).createShader(
                          Rect.fromLTWH(0, 0, bound.width, bound.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/img1.png',
                      height: 400,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49,
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(top: 45),
                    child: Column(
                      children: [
                        Text(
                          "Sumesh Yogi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              foreground: Paint()..shader = headerGradient),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          builder: (context, state) {
            return Container(
                margin: const EdgeInsets.only(left: 7, right: 7, top: 7),
                height: 500,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..shader = overallTextGradient),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Specialized In',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            mySpecialization(
                                FontAwesomeIcons.android, "Android"),
                            mySpecialization(FontAwesomeIcons.java, "Java"),
                            mySpecialization(FontAwesomeIcons.code, "Coding"),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            mySpecialization(Icons.sports_cricket, "Sports"),
                            mySpecialization(Icons.developer_mode, "Node Js"),
                            mySpecialization(
                                FontAwesomeIcons.database, "MongoDb"),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Thank You",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..shader = overallTextGradient),
                        ),
                        const SizedBox(height: 20,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                          onPressed: (){
                          Navigator.pushNamed(context, 'about');
                        }, child: const Text("About"),),
                      ],
                    )
                  ],
                ));
          },
        ),
      ),
    );
  }
}
