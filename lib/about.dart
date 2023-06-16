import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {

 final Uri _urlInsta = Uri.parse('https://instagram.com/sumeshyogi_07?igshid=MzRlODBiNWFlZA==');

  Future<void> _launchUrlInsta() async {
    if (!await launchUrl(_urlInsta)) {
      throw Exception('Could not launch $_urlInsta');
    }
  }
 final Uri _urlLink = Uri.parse('https://www.linkedin.com/in/sumesh-yogi-647b98210');

 Future<void> _launchUrlLink() async {
   if (!await launchUrl(_urlLink)) {
     throw Exception('Could not launch $_urlLink');
   }
 }
 final Uri _urlGit = Uri.parse('https://instagram.com/sumeshyogi_07?igshid=MzRlODBiNWFlZA==');

 Future<void> _launchUrlGit() async {
   if (!await launchUrl(_urlGit)) {
     throw Exception('Could not launch $_urlGit');
   }
 }
 final Uri _urlFb = Uri.parse('https://www.facebook.com/sumesh.yogi.5');

 Future<void> _launchUrlFb() async {
   if (!await launchUrl(_urlFb)) {
     throw Exception('Could not launch $_urlFb');
   }
 }
 final Uri _urlTw = Uri.parse('https://twitter.com/yogi_sumesh?t=aHQZCcDol2Rrr-mYZYxqug&s=08');

 Future<void> _launchUrlTw() async {
   if (!await launchUrl(_urlTw)) {
     throw Exception('Could not launch $_urlTw');
   }
 }
 final Uri _urlYt = Uri.parse('https://www.youtube.com/@sumeshyogi5682');

 Future<void> _launchUrlYt() async {
   if (!await launchUrl(_urlYt)) {
     throw Exception('Could not launch $_urlYt');
   }
 }

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(163, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          foreground: Paint()..shader = highlightGradient),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        child: const Text("My Skills"),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            icon: const Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                            ),
                            onPressed: _launchUrlInsta,
                        ),
                        IconButton(
                          onPressed: _launchUrlLink,
                          icon: const Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: _launchUrlGit,
                          icon: const Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: _launchUrlFb,
                          icon: const Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: _launchUrlTw,
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: _launchUrlYt,
                          icon: const Icon(
                            FontAwesomeIcons.youtube,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
