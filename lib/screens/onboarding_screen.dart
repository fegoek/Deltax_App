import 'package:deltax/screens/welcome_page.dart';
import 'package:deltax/util/onboard_item.dart';
import 'package:deltax/util/sizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;
  List colors = const [
     Color(0xff021F33),
      Color(0xff021F33),
       Color(0xff021F33),
    // Color(0xffDAD3C8),
   // Color(0xffFFE5DE),
    //Color(0xffDCF6E6),
  ];

  AnimatedContainer _buildDots({
     int ? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
        color: Color(0xFF3498DB),
      
        
      ),
      margin: const EdgeInsets.only(right: 9),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 13: 10,
    );
  }

  

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        contents[i].image,
                        // height: SizeConfig.blockV! * 45,
                      ),
                      SizedBox(
                        height: (height >= 840) ? 15 : 30,
                      ),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:  const Color(0xff3498DB),
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700,
                          fontSize: (width <= 550) ? 30 : 35,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Text(
                          contents[i].desc,
                          style: TextStyle(
                            color:  const Color(0xffFFFFFF),
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w400,
                            fontSize: (width <= 550) ? 17 : 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (int index) => _buildDots(
                        index: index,
                      ),
                    ),
                  ),
                  _currentPage + 1 == contents.length
                      ? Padding(
                          padding: const EdgeInsets.all(30),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                              CupertinoPageRoute(
                                builder: (context) => const WelcomeScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const  Color(0xff3498DB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: (width <= 550)
                                  ? const EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 20)
                                  : EdgeInsets.symmetric(
                                      horizontal: width * 0.2, vertical: 25),
                              textStyle:
                                  TextStyle(fontSize: (width <= 550) ? 13 : 17),
                            ),
                            child: const Text("Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 18
                            ),),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  _controller.jumpToPage(2);
                                },
                                style: TextButton.styleFrom(
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: (width <= 550) ? 15 : 17,
                                  ),
                                ),
                                child: const Text(
                                  "SKIP",
                                  style: TextStyle(color:   Color(0xff3498DB)),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _controller.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:const  Color(0xff3498DB),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  elevation: 0,
                                  padding: (width <= 550)
                                      ? const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20)
                                      : const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 25),
                                  textStyle: TextStyle(
                                      fontSize: (width <= 550) ? 13 : 17),
                                ),
                                child: const Text("Next",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800,
                                fontSize: 18),),
                              ),
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
