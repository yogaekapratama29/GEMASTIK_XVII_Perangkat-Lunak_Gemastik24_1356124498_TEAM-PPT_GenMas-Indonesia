import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 20),
            child: InkWell(
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Homepage(),),),
              child: Text(
                "Skip",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                children: [
                  createPage(
                    image: "images/onboarding1.png",
                    title:
                        "Mari Persiapkan Generasi Bangsa yang Unggul dengan Cegah Stunting",
                  ),
                  createPage(
                    image: "images/onboarding2.png",
                    title:
                        "Wujudkan Sebuah Keluarga yang Harmonis,Sehat dan Sejahtera",
                  ),
                ],
              ),
              //Untuk membuat (dot)
              Positioned(
                bottom: 80,
                left: 30,
                child: Row(
                  children: [
                    ..._buildIndicator(),
                  ],
                ),
              ),
              Positioned(
                bottom: 60,
                right: 30,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (currentIndex == 0) {
                          currentIndex++;
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        } else {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => Homepage()));
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 244, 114, 181)),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  //animasi(Dot)
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10,
      width: isActive ? 20 : 8,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 244, 114, 181),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 2; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}

class createPage extends StatelessWidget {
  final String image;
  final String title;
  const createPage({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.0 ,
            vertical: MediaQuery.of(context).size.height * 0.0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(image),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade600),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
