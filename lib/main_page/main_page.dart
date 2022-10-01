import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  border: Border.all(
                    color: Colors.black,
                  ),
                  image: const DecorationImage(
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
                                                speed: const Duration(
                                                    milliseconds: 200)),
                                            TypewriterAnimatedText(
                                                'Little bit UI/UX designer',
                                                speed: const Duration(
                                                    milliseconds: 200)),
                                            TypewriterAnimatedText('Freelancer',
                                                speed: const Duration(
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
              // serverces
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
                      children: const [
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
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
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
                              const Text(
                                "Flutter Mobile App",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "with 3+ year of industrial Experiences and the 20+ happy client now we are able to say that i will built your app with greate quality and according to your dreame and vision",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
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
                              const Text(
                                "Flutter Website",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "with 3+ year of industrial Experiences and the 20+ happy client now we are able to say that i will built your app with greate quality and according to your dreame and vision",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
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
                              const Text(
                                "UI/UX design",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "with 3+ year of industrial Experiences and the 20+ happy client now we are able to say that i will built your app with greate quality and according to your dreame and vision",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                //height: width * 0.53,
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: width * 0.045,
                    ),
                    Text(
                      "Case Study",
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
                      children: const [
                        const Text(
                          "These case study prove of our work also it`s show how we can deal with our clients and what are neccessary things that we focus ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Text(
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
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: width * 0.03,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.note_add_outlined,
                                  size: width * 0.03,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "Notes Up App",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "Concept of this app is here user can trades of there notes ,Chat with there friend and connect with there school mates. here you can also buy and sale your notes",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
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
                              const Text(
                                "Tracker App",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "Concept of this app is here company owner track there salesman in real time. this tracker also show the all shops of company all round the karachi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
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
                              const Text(
                                "Recipe Hero",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "Recipt hero is a where you can see a complete guidence and how to cook your delicious food and also its suggest you disious if according to your food list",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: width * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
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
                              const Text(
                                "Suq - Express",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "In this app user can buy the all parts of there bikes. Basically this is a E-commerce app where you can only purchase a bikes parts and you have varitous of diffrent brands",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
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
                              const Text(
                                "Suq - Salesman",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "Suq - Salesman app for salesman where they can create new shops, create orders, accept payment, this also have a some greate feature such as It`s always tracked",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.symmetric(
                              vertical: width * 0.02, horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3))),
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
                              const Text(
                                "Quick Notes",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: width * 0.02,
                              ),
                              const Text(
                                "Quick Notes is provide the plat from where user can save task in the from of notes and with repect to there category. the main things about this is we are useing a sql database here.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: width * 0.02,
                    ),
                  ],
                ),
              ),
              //bottom bar
              Container(
                alignment: Alignment.center,
                color: const Color(0xff110c12),
                height: width * 0.35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // About Us
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width: width * 0.2,
                            child: Text(
                                "I am Talha Iqbal student of computer science in DHA Suffa University. I ma doing flutter from last past two year and work on many industrial projects. I am guy who passionate about programming always try to be better because i believe in hard work more than a luck. One day the all you do returns to you",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.01,
                                    fontWeight: FontWeight.w100))),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: width * 0.02,),
                        SizedBox(height: width * 0.02,),
                        SizedBox(height: width * 0.02,),

                        Text(
                          "Quick Link",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: width * 0.05,),
                        SizedBox(
                          height: width * 0.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(list[0].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100)),
                              SizedBox(height: width * 0.02,),
                              Text(list[1].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100)),
                              SizedBox(height: width * 0.02,),
                              Text(list[2].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100)),
                              SizedBox(height: width * 0.02,),
                              Text(list[3].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100)),

                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: width * 0.02,),
                        SizedBox(height: width * 0.02,),
                        SizedBox(height: width * 0.02,),

                        Text(
                          "Follow Me",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: width * 0.05,),
                        SizedBox(
                          height: width * 0.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.google,color: Colors.white,size: width * 0.015,),
                                  SizedBox(width: width * 0.02,),
                                  InkWell(
                                      onTap: ()async{
                                        await _launchUrl(followMe[0]);
                                      },
                                      child: Text(followMe[0].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100))),
                                ],
                              ),
                              SizedBox(height: width * 0.02,),
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.linkedinIn,color: Colors.white,size: width * 0.015,),
                                  SizedBox(width: width * 0.02,),
                                  InkWell(
                                      onTap: ()async{
                                        await _launchUrl(followMe[1]);
                                      },
                                      child: Text(followMe[1].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100))),
                                ],
                              ),
                              //Text(list[1].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100)),
                              SizedBox(height: width * 0.02,),
                              //Text(list[2].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100)),
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.facebook,color: Colors.white,size: width * 0.015,),
                                  SizedBox(width: width * 0.02,),
                                  InkWell(
                                      onTap: ()async{
                                        await _launchUrl(followMe[2]);
                                      },
                                      child: Text(followMe[2].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100))),
                                ],
                              ),
                              SizedBox(height: width * 0.02,),
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.github,color: Colors.white,size: width * 0.015,),
                                  SizedBox(width: width * 0.02,),
                                  InkWell(
                                      onTap: ()async{
                                        await _launchUrl(followMe[3]);
                                      },
                                      child: Text(followMe[3].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100))),
                                ],
                              ),
                              //Text(list[3].toString(), style: TextStyle(color: Colors.white, fontSize: width * 0.012, fontWeight: FontWeight.w100)),

                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  List<String>list=["Home","Services","Case Study","About Us","Hire Me"];
  List<String>followMe=["talha.developer01@gmail.com","https://www.linkedin.com/in/talha-iqbal-371aa5229/","https://www.facebook.com/profile.php?id=100045998763606","https://github.com/talha828",];
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
