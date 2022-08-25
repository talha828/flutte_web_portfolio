import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custome_widgets/nar_bar_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool home = false;
  bool services = false;
  bool caseStudy = false;
  bool aboutUs = false;
  bool contactMe = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: width * 0.55,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/main_background.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ClipRRect(
                  // make sure we apply clip it properly
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.04 * width, vertical: width * 0.01),
                      color: Colors.grey.withOpacity(0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Nav Bar
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Nav bar heading
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "Talha Iqbal",
                                      style: TextStyle(
                                        fontSize: width * 0.02,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Nav bar buttons
                              //TODO :// set onTap functionality
                              Container(
                                child: Row(
                                  children: [
                                    NavBarButton(
                                      width: width,
                                      isYes: home,
                                      label: "Home",
                                      onHover: (value) {
                                        setState(() {
                                          home = value;
                                        });
                                      },
                                    ),
                                    NavBarButton(
                                      width: width,
                                      isYes: services,
                                      label: "Services",
                                      onHover: (value) {
                                        setState(() {
                                          services = value;
                                        });
                                      },
                                    ),
                                    NavBarButton(
                                      width: width,
                                      isYes: caseStudy,
                                      label: "Case Study",
                                      onHover: (value) {
                                        setState(() {
                                          caseStudy = value;
                                        });
                                      },
                                    ),
                                    NavBarButton(
                                      width: width,
                                      isYes: aboutUs,
                                      label: "About Us",
                                      onHover: (value) {
                                        setState(() {
                                          aboutUs = value;
                                        });
                                      },
                                    ),
                                    NavBarButton(
                                      width: width,
                                      isYes: contactMe,
                                      label: "Contact Me",
                                      onHover: (value) {
                                        setState(() {
                                          contactMe = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello!",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    height: width * 0.02,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "I am a ",
                                        style: TextStyle(
                                          fontSize: width * 0.05,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      ),
                                      DefaultTextStyle(
                                        style: TextStyle(
                                            fontSize: width * 0.05,
                                            color: Colors.red),
                                        child: AnimatedTextKit(
                                          repeatForever: true,
                                          animatedTexts: [
                                            TypewriterAnimatedText(
                                                'Flutter Developer!',
                                                speed: Duration(
                                                    milliseconds: 200)),
                                            TypewriterAnimatedText(
                                                'Little bit UI/UX designer',
                                                speed: Duration(
                                                    milliseconds: 200)),
                                            TypewriterAnimatedText('Freelancer',
                                                speed: Duration(
                                                    milliseconds: 200)),
                                          ],
                                          onTap: () {
                                            print("Tap Event");
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: width * 0.02,
                                  // ),
                                  SizedBox(
                                    height: width * 0.02,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Success is not accident. it is a hard work, perseverance, learning, studying, ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.015,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        "Sacrifices, and most of all, Love what are you doing",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.015,
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                height: width * 0.53,
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: width * 0.045,
                    ),
                    Text(
                      "Our Services",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: width * 0.045,
                    ),
                    Column(
                      children: [
                        Text(
                          "I am here for convert your great ideas into reality and lift up your life to your dream. our best things is we believe in quality of work",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Customer satisfiction are priority our",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: width * 0.045,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(vertical: width * 0.02,horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black.withOpacity(0.3))),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: width * 0.03,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.mobile_friendly,
                                  size: width * 0.03,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              Text(
                                "Flutter Mobile App",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                          Text(
                            "with 3+ year of industrial Experiences and the 20+ happy client now we are able to say that i will built your app with greate quality and according to your dreame and vision",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                                fontWeight: FontWeight.w600
                            ),)
                            ],
                          ),
                        ),
                        SizedBox(width: width * 0.02,),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(vertical: width * 0.02,horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black.withOpacity(0.3))),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: width * 0.03,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.web,
                                  size: width * 0.03,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              Text(
                                "Flutter Website",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              Text(
                                "with 3+ year of industrial Experiences and the 20+ happy client now we are able to say that i will built your app with greate quality and according to your dreame and vision",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(width: width * 0.02,),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(vertical: width * 0.02,horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black.withOpacity(0.3))),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: width * 0.03,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.design_services,
                                  size: width * 0.03,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              Text(
                                "UI/UX design",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              Text(
                                "with 3+ year of industrial Experiences and the 20+ happy client now we are able to say that i will built your app with greate quality and according to your dreame and vision",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600
                                ),)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
