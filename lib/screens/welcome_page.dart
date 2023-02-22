import 'package:deltax/screens/individual_screen.dart';
import 'package:deltax/screens/individual_screen2.dart';
import 'package:deltax/screens/login_screen.dart';
import 'package:deltax/screens/organisation_screen.dart';
import 'package:deltax/util/sizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return  Scaffold(
      backgroundColor:  Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children:  [
      const SizedBox(height: 110),
      const Text("WELCOME",
      style: TextStyle(
        color:  Color(0xff3498DB),
        fontSize: 34,
        fontWeight: FontWeight.w900,
        fontFamily: "Mulish"
      ),),
      const SizedBox(height: 10,),
      const Text("Let's get you signed up as a\n taxpayer;",
      style: TextStyle(
        fontSize: 20,
        fontFamily: "Mulish",
        fontWeight: FontWeight.w600
      ),
      ),
      const SizedBox(height: 50),
      ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                              CupertinoPageRoute(
                                builder: (context) => const IndividualScreen2()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const  Color(0xff3498DB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                             
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 55,right: 55,top: 15,bottom: 15),
                              child: Text("Individual (Self Employed)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Mulish",
                                fontSize: 20
                              ),),
                            ),
                          ),
                          const SizedBox(height: 50),
                          const Text("__________________Or_________________",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: "Mulish"
                          ),),
                           const SizedBox(height: 55),
      ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                              CupertinoPageRoute(
                                builder: (context) => const OrganisationScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const  Color(0xffE67E22),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                             
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 83,right: 83,top: 15,bottom: 15),
                              child: Text("Organisation (PAYE)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Mulish",
                                fontSize: 20
                              ),),
                            ),
                          ),
                          const SizedBox(height: 70),
          //                  Row(
          //                   children: [
          //                     const Padding(
          //                       padding: EdgeInsets.only(left: 65),
          //                       child: Text(
          //                         "Already have an Account?",
          //                         style: TextStyle(
          //                           fontFamily: "Mulish",
          //                           fontSize: 19,
          //                           fontWeight: FontWeight.w500
          //                         ),
          //                       ),
          //                     ),
          //                     const SizedBox(width: 10,),
          //                     GestureDetector(
          //                         onTap: () {
          //                           Navigator.pushReplacement(
          //                               context,
          //                               MaterialPageRoute(
          //                                   builder: (context) =>
          //                                       const LoginScreen()));
          //                         },
          //                         child: const Text(
          //                           "Login",
          //                           style: TextStyle(
          //                             fontSize: 19,
          //                             color: Colors.blue),
          //                         ))
          //   ],
          // ),
            ]
        ),
      ),
      )
    );
  }
}