import 'package:deltax/preference/user_preference.dart';
import 'package:deltax/provider/user_provider.dart';
import 'package:deltax/screens/login_screen2.dart';
import 'package:deltax/screens/organ_payment_screen.dart';
import 'package:deltax/screens/organ_settings_screen.dart';
import 'package:deltax/screens/organisation_home.dart';
import 'package:deltax/screens/payment_screen.dart';
import 'package:deltax/screens/settings_screen.dart';
import 'package:deltax/util/constant.dart';
import 'package:deltax/util/utility.dart';
import 'package:deltax/util/web_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrganisationProfileWidget extends StatefulWidget {
  const OrganisationProfileWidget({super.key});

  @override
  State<OrganisationProfileWidget> createState() => _OrganisationProfileWidgetState();
}

class _OrganisationProfileWidgetState extends State<OrganisationProfileWidget> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
     return Scaffold(
       backgroundColor: const Color.fromARGB(255, 249, 244, 244),
      //  backgroundColor: const Color.fromARGB(95, 255, 255, 255),
      appBar: AppBar(
       // iconTheme: IconThemeData(color: Colors.white),
        leading: Builder(builder: (context) {
          return IconButton(onPressed: (){
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => const OrganisationHome()));
          }, icon: const Icon(Icons.arrow_back, color:   Color(0xff3498DB),),);
        },),
        toolbarHeight: 70,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text("Profile",
      style: TextStyle(
        color:   Color(0xff3498DB),
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),),
    actions: [
     Padding(
       padding: const EdgeInsets.only(right: 20,top: 15,bottom: 15),
      child: Container(height: 10,
      width: 40,
      decoration: BoxDecoration(color: const  Color(0xff3498DB),
      boxShadow: const [
        BoxShadow(
          color:   Color(0xff3498DB),
          blurStyle: BlurStyle.outer,
      spreadRadius: 2,
      offset: Offset(0.75, 2.0),
        blurRadius: 3)],
      borderRadius: BorderRadius.circular(200)
      ),
      child: const Icon(
      Icons.notifications_outlined,color: Colors.white,),
      ),)
    ],),
    body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                     Container(
                  height: 150,width: double.infinity,
                             decoration: const BoxDecoration(
                  // boxShadow: [BoxShadow
                  // (spreadRadius: 2,blurRadius: 2,
                  //            color: Color.fromARGB(85, 0, 0, 0))],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(185),
                             bottomRight: Radius.circular(185)),
                  color:Colors.white),),
                   Padding(
                     padding: const EdgeInsets.only(left: 117,top: 55),
                     child: profileImage("assets/images/fegor.png"),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 265,top: 200),
                     child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color:  const Color(0xff3498DB),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Icon(Icons.drive_file_rename_outline,
                      color: Colors.white,)),
                   )
                  ],
                ),
                const SizedBox(height: 20),
Text("${userProvider.changeName}",
style: const TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w600,
  fontFamily: "Mulish",
  fontSize: 25
),),
const SizedBox(height: 20,),
Stack(
  children: [
    Center(
      child: Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 360,
                      width: 380,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: Colors.white
                         ),
                        ),
    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 15),
                        child: Row(
                          children:  const [
                            Text("Email:",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Mulish"
                            ),),
                            SizedBox(width: 85),
                            Text("*****************",
                            style: TextStyle(
                           fontSize: 20,
                           fontFamily: "Mulish"   
                            ),)
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 65,left: 25,right: 25),
                        child: Divider(
                          thickness: 2.0,
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(left: 40,top: 88),
                        child: Row(
                          children: const [
                            Text("STIN:",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Mulish"
                            ),),
                            SizedBox(width: 112),
                            Text("1234*********",
                            style: TextStyle(
                           fontSize: 20,
                           fontFamily: "Mulish"   
                            ),)
                          ],
                        ),
                      ),
                        const Padding(
                        padding: EdgeInsets.only(top: 135,left: 25,right: 25),
                        child: Divider(
                          thickness: 2.0,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 40,top: 157),
                        child: Row(
                          children: const [
                             Text("User ID:",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Mulish"
                            ),),
                             SizedBox(width: 165),
                            Text("34563AD",
                            style: TextStyle(
                           fontSize: 20,
                           fontFamily: "Mulish"   
                            ),)
                          ],
                        ),
                      ),
                       const Padding(
                        padding: EdgeInsets.only(top: 210,left: 25,right: 25),
                        child: Divider(
                          thickness: 2.0,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 40,top: 235),
                        child: Row(
                          children: const [
                            Text("Tax Clearance:",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Mulish"
                            ),),
                            SizedBox(width: 165),
                            Text("0",
                            style: TextStyle(
                           fontSize: 20,
                           fontFamily: "Mulish"   
                            ),)
                          ],
                        ),
                      ),
                       const Padding(
                        padding: EdgeInsets.only(top: 286,left: 25,right: 25),
                        child: Divider(
                          thickness: 2.0,
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 40,top: 308),
                        child: Row(
                          children: const [
                            Text("Receipts:",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Mulish"
                            ),),
                            SizedBox(width: 220),
                            Text("0",
                            style: TextStyle(
                           fontSize: 20,
                           fontFamily: "Mulish"   
                            ),)
                          ],
                        ),
                      ),
            ],
),
const SizedBox(height: 70),
 Stack(
  children: const [
    Center(
     // child: MediaQuery(
       // data: MediaQuery.of(context) ,
        // child: Container(
        //   width: MediaQuery.of(context).size.width * 0.88,
        //                 // height: sizeConfig.blockV! * 5.1,
        //                 height: 65,
        //                 // width: 380,
        //                 decoration:  BoxDecoration(
        //                   border: Border.all(
        //                     color: Colors.black
        //                   ),
        //                   borderRadius: BorderRadius.circular(15),
        //                    color: Colors.white
        //                    ),
        //                    child: const Padding(
        //                      padding: EdgeInsets.only(left: 10, top: 14),
        //                      child: Text("File Annual Tax Returns",
        //                      style: TextStyle(
        //                       color: Color(0xff3498DB),
        //                       fontSize: 20,
        //                       fontFamily: "Mulish"
        //                      ),),
        //                    ),
        //                   ),
     // ),
    )
  ],
 ),
  Stack(
  children: [
    Center(
      child: 
      MediaQuery(
        data: MediaQuery.of(context) ,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.88,
                        // height: sizeConfig.blockV! * 5.1,
                        height: 65,
                        // width: 380,
                        decoration:  BoxDecoration(
                          border: Border.all(
                            color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(15),
                           color: Colors.white
                           ),
                           child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                               CupertinoPageRoute(builder: (context) => const OrganPaymentScreen()));
                            },
                             child: const Padding(
                               padding: EdgeInsets.only(left: 10, top: 14),
                               child: Text("Pay Tax",
                               style: TextStyle(
                                color: Color(0xff3498DB),
                                fontSize: 20,
                                fontFamily: "Mulish"
                               ),),
                             ),
                           ),
                          //  child: const Padding(
                          //    padding: EdgeInsets.only(left: 10, top: 14),
                          //    child: Text("Pay Tax",
                          //    style: TextStyle(
                          //     color: Color(0xff3498DB),
                          //     fontSize: 20,
                          //     fontFamily: "Mulish"
                          //    ),),
                          //  ),
                          ),
      ),
    )
  ],
 ),
  Stack(
  children: [
    Center(
      child: MediaQuery(
        data: MediaQuery.of(context) ,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.88,
                        // height: sizeConfig.blockV! * 5.1,
                        height: 65,
                        // width: 380,
                        decoration:  BoxDecoration(
                          border: Border.all(
                            color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(15),
                           color: Colors.white
                           ),
                           child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                               CupertinoPageRoute(builder: (context) => const SettingsScreen()));
                            },
                             child: const Padding(
                               padding: EdgeInsets.only(left: 45, top: 14),
                               child: Text("Settings",
                               style: TextStyle(
                                color: Color(0xff3498DB),
                                fontSize: 20,
                                fontFamily: "Mulish"
                               ),),
                             ),
                           ),
                          ),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 38,top: 18),
      child: Icon(Icons.settings,
      color:  Color(0xff3498DB),),
    )
  ],
 ),
  Stack(
  children: [
    Center(
      child: 
      MediaQuery(
        data: MediaQuery.of(context) ,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.88,
                        // height: sizeConfig.blockV! * 5.1,
                        height: 65,
                        // width: 380,
                        decoration:  BoxDecoration(
                          border: Border.all(
                            color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(15),
                           color: Colors.white
                           ),
                           child:  Padding(
                             padding: const EdgeInsets.only(left: 45, top: 14),
                             child: GestureDetector(
                              onTap: () =>  openURL(StaticUtils.help),
                               child: const Text("Help & Support",
                               style: TextStyle(
                                color: Color(0xff3498DB),
                                fontSize: 20,
                                fontFamily: "Mulish"
                               ),),
                             ),
                           ),
                          ),
      ),
    ),
     const Padding(
      padding: EdgeInsets.only(left: 38,top: 18),
      child: Icon(Icons.headset_mic,
      color:  Color(0xff3498DB),),
    )
  ],
 ),
 const SizedBox(height: 60),
  Stack(
  children: [
    Center(
      child:
       MediaQuery(
        data: MediaQuery.of(context) ,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.88,
                        // height: sizeConfig.blockV! * 5.1,
                        height: 65,
                        // width: 380,
                        decoration:  BoxDecoration(
                          border: Border.all(
                            color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(15),
                           color: Colors.white
                           ),
                           child:  Padding(
                             padding: const EdgeInsets.only(left: 45, top: 14),
                             child: GestureDetector(
                              onTap: () {
                                  UserPreference().removeUser();
                      Navigator.pushReplacement(context,
                       MaterialPageRoute(builder:
                        ((context) => const LoginScreen2())));
                              },
                               child: const Text("Logout",
                               style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontFamily: "Mulish"
                               ),),
                             ),
                           ),
                          ),
       ),
    ),
     const Padding(
      padding: EdgeInsets.only(left: 38,top: 18),
      child: Icon(Icons.logout,
      color:  Colors.red),
    )
  ],
 ),
 const SizedBox(height: 50),
    ]
    )
    ) 
     )
     )
      );
  }
}