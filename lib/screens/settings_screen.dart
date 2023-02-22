import 'package:deltax/screens/account_settings_screen.dart';
import 'package:deltax/widgets/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
   bool isSwitched = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        
        shape: const RoundedRectangleBorder
        (
           borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
        ),),
       // iconTheme: IconThemeData(color: Colors.white),
        leading: Builder(builder: (context) {
          return IconButton(onPressed: (){
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => const ProfileWidget()));
          }, icon: const Icon(Icons.arrow_back, color: Colors.white,),);
        },),
        toolbarHeight: 70,
      backgroundColor: const Color(0xff3498DB),
      centerTitle: true,
      title: const Text("Settings",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),),
      //   actions: [
      //    Padding(
      //  padding: const EdgeInsets.only(right: 20,top: 15,bottom: 15),
      // child: Container(height: 10,
      // width: 40,
      // decoration: BoxDecoration(//color: Colors.red,
      // boxShadow: const [
      //   BoxShadow(
      //     blurStyle: BlurStyle.outer,
      // spreadRadius: 1,
      // offset: Offset(0.75, 2.0),
      //   blurRadius: 5)],
      // borderRadius: BorderRadius.circular(200)
      // ),
      // child: const Icon(
      // Icons.notifications_outlined,color: Colors.white,),
      // ),)
      //   ],),
    ),
    body: SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
             MediaQuery(
              data: MediaQuery.of(context),
               child: Stack(
               children: [
                  Center(
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
                               CupertinoPageRoute(builder: (context) => const AccountSettingsScreen()));
                            },
                             child: const Padding(
                               padding: EdgeInsets.only(left: 45, top: 14),
                               child: Text("Account Settings",
                               style: TextStyle(
                                color: Color(0xff3498DB),
                                fontSize: 20,
                                fontFamily: "Mulish"
                               ),),
                             ),
                           ),
                          ),
                 ),
//                  MediaQuery.of(context).size.width > 600 ? Padding(
//   padding: EdgeInsets.all(32.0),
//   child: ...
// ) : Padding(
//   padding: EdgeInsets.all(16.0),
//   child: ...
                 MediaQuery(
                     data: MediaQuery.of(context) ,
                     child: SizedBox(
                       width: MediaQuery.of(context).size.width * 5.8,
                     child: 
                     MediaQuery.of(context).size.width > 300 ? const Padding(
                       padding: EdgeInsets.only(left: 320, top: 20),
                       child: Icon(Icons.arrow_forward_ios,
                         color:  Color(0xff3498DB),),
                     ) :
                     const Padding(
                       padding: EdgeInsets.only(left: 0, top: 20),
                       child: Icon(Icons.arrow_forward_ios,
                         color:  Color(0xff3498DB),),
                     )
                     ,
                   ),
                 ),
                 const Padding(
                   padding: EdgeInsets.only(left: 38,top: 18),
                   child: Icon(Icons.person,
                   color:  Color(0xff3498DB),),
                 )
               ],
              ),
             ),
 const SizedBox(height: 40),
 Stack(
  children: [
     Center(
      child:
       Container(
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
                             showModalBottomSheet(
                                shape: const RoundedRectangleBorder
         (
            borderRadius: BorderRadius.only(
         topLeft: Radius.circular(25),
         topRight: Radius.circular(25),
         ),),
                               context: context,
                                builder: (context) => Container(
                                 height: 350,
                                 child: Column(
                                   children:  [
                                     Row(
                                       children:  [
                                         const Padding(
                                           padding: EdgeInsets.only(left: 30,top: 25),
                                           child: Text("Accessed Reference Number",
                                            style: TextStyle(
                               color: Color(0xff3498DB),
                               fontSize: 20,
                               fontFamily: "Mulish"
                              ),),
                                         ),
                                         const SizedBox(width: 35),
                                         Padding(
                                           padding: const EdgeInsets.only(top: 30),
                                           child: Switch(
                                             value: isSwitched, 
                                             onChanged: (value) 
                                             {
                                               setState(() {
                                                 isSwitched=value;
            print(isSwitched);
                                               });
                                             },
                                             activeTrackColor: const Color(0xff3498DB),
           activeColor: Colors.white,
                                             ),
                                         )
                                       ],
                                     ),
                                      Row(
                                       children:  [
                                         const Padding(
                                           padding: EdgeInsets.only(left: 25,top: 25),
                                           child: Text("Downloads",
                                            style: TextStyle(
                               color: Color(0xff3498DB),
                               fontSize: 20,
                               fontFamily: "Mulish"
                              ),),
                                         ),
                                         const SizedBox(width: 35),
                                         Padding(
                                           padding: const EdgeInsets.only(top: 30,left: 163),
                                           child: Switch(
                                             value: isSwitched, 
                                             onChanged: (value) 
                                             {
                                               setState(() {
                                                 isSwitched=value;
            print(isSwitched);
                                               });
                                             },
                                             activeTrackColor: const Color(0xff3498DB),
           activeColor: Colors.white,
                                             ),
                                         )
                                       ],
                                     ),
                                     Row(
                                       children:  [
                                         const Padding(
                                           padding: EdgeInsets.only(left: 25,top: 25),
                                           child: Text("PAYE monthly Schedule",
                                            style: TextStyle(
                               color: Color(0xff3498DB),
                               fontSize: 20,
                               fontFamily: "Mulish"
                              ),),
                                         ),
                                         const SizedBox(width: 35),
                                         Padding(
                                           padding: const EdgeInsets.only(top: 30,left: 47),
                                           child: Switch(
                                             value: isSwitched, 
                                             onChanged: (value) 
                                             {
                                               setState(() {
                                                 isSwitched=value;
            print(isSwitched);
                                               });
                                             },
                                             activeTrackColor: const Color(0xff3498DB),
           activeColor: Colors.white,
                                             ),
                                         )
                                       ],
                                     ),
                                      Row(
                                       children:  [
                                         const Padding(
                                           padding: EdgeInsets.only(left: 25,top: 25),
                                           child: Text("General Notification",
                                            style: TextStyle(
                               color: Color(0xff3498DB),
                               fontSize: 20,
                               fontFamily: "Mulish"
                              ),),
                                         ),
                                         const SizedBox(width: 35),
                                         Padding(
                                           padding: const EdgeInsets.only(top: 30,left: 87),
                                           child: Switch(
                                             value: isSwitched, 
                                             onChanged: (value) 
                                             {
                                               setState(() {
                                                 isSwitched=value;
            print(isSwitched);
                                               });
                                             },
                                             activeTrackColor: const Color(0xff3498DB),
           activeColor: Colors.white,
                                             ),
                                         )
                                       ],
                                     ),
                                   ],
                                 ),
                                )
       
                                );
                             // Navigator.push(context,
                             //  CupertinoPageRoute(builder: (context) => const SettingsScreen()));
                           },
                            child: const Padding(
                              padding: EdgeInsets.only(left: 45, top: 14),
                              child: Text("Notification Settings",
                              style: TextStyle(
                               color: Color(0xff3498DB),
                               fontSize: 20,
                               fontFamily: "Mulish"
                              ),),
                            ),
                          ),
                         ),
    ),
    MediaQuery(
        data: MediaQuery.of(context) ,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 5.8,
        child: const Padding(
          padding: EdgeInsets.only(left: 320, top: 20),
          child: Icon(Icons.arrow_forward_ios,
            color:  Color(0xff3498DB),),
        ),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 38,top: 18),
      child: Icon(Icons.notifications,
      color:  Color(0xff3498DB),),
    )
  ],
 ),
  const SizedBox(height: 40),
 Stack(
  children: [
     Center(
      child: 
      Container(
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
                             child: Text("Privacy",
                             style: TextStyle(
                              color: Color(0xff3498DB),
                              fontSize: 20,
                              fontFamily: "Mulish"
                             ),),
                           ),
                         ),
                        ),
    ),
    MediaQuery(
        data: MediaQuery.of(context) ,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 5.8,
        child: const Padding(
          padding: EdgeInsets.only(left: 320, top: 20),
          child: Icon(Icons.arrow_forward_ios,
            color:  Color(0xff3498DB),),
        ),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 38,top: 18),
      child: Icon(Icons.lock,
      color:  Color(0xff3498DB),),
    )
  ],
 ),
 const SizedBox(height: 40),
 Stack(
  children: [
     Center(
      child: 
      Container(
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
                             child: Text("Terms & Condition",
                             style: TextStyle(
                              color: Color(0xff3498DB),
                              fontSize: 20,
                              fontFamily: "Mulish"
                             ),),
                           ),
                         ),
                        ),
    ),
    MediaQuery(
        data: MediaQuery.of(context) ,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 5.8,
        child: const Padding(
          padding: EdgeInsets.only(left: 320, top: 20),
          child: Icon(Icons.arrow_forward_ios,
            color:  Color(0xff3498DB),),
        ),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 38,top: 18),
      child: Icon(Icons.wysiwyg,
      color:  Color(0xff3498DB),),
    )
  ],
 ),
  const SizedBox(height: 40),
 Stack(
  children: [
     Center(
      child: 
      Container(
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
                            showModalBottomSheet(
                               shape: const RoundedRectangleBorder
        (
           borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
        ),),
                              context: context, 
                              builder: (context) => 
                               Container(
                                height: 420,
                                 child: Center(
                                   child: Column(
                                     children: [
                                      const SizedBox(height: 40),
                                      Stack(
      children: [
         Center(
      child: Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 65,
                      width: MediaQuery.of(context).size.width * 0.88,
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
                             padding: EdgeInsets.only(left: 20, top: 12),
                             child: Text("Rate App",
                             style: TextStyle(
                              color: Color(0xff3498DB),
                              fontSize: 20,
                              fontFamily: "Mulish"
                             ),),
                           ),
                         ),
                        ),
        ),
        const Padding(
      padding: EdgeInsets.only(left: 340,top: 17),
      child: Icon(Icons.arrow_forward_ios,
        color:  Color(0xff3498DB),),
        ),
      ],
       ),
       const SizedBox(height: 30),
       Stack(
      children: [
         Center(
      child: Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 65,
                      width: MediaQuery.of(context).size.width * 0.88,
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
                             padding: EdgeInsets.only(left: 20, top: 14),
                             child: Text("FAQ",
                             style: TextStyle(
                              color: Color(0xff3498DB),
                              fontSize: 20,
                              fontFamily: "Mulish"
                             ),),
                           ),
                         ),
                        ),
        ),
        const Padding(
      padding: EdgeInsets.only(left: 340,top: 17),
      child: Icon(Icons.arrow_forward_ios,
        color:  Color(0xff3498DB),),
        ),
        // const Padding(
        //   padding: EdgeInsets.only(left: 38,top: 18),
        //   child: Icon(Icons.wysiwyg,
        //   color:  Color(0xff3498DB),),
        // )
      ],
       ),
      const SizedBox(height: 30),
       Stack(
      children: [
         Center(
      child: Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 65,
                      width: MediaQuery.of(context).size.width * 0.88,
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
                             padding: EdgeInsets.only(left: 20, top: 14),
                             child: Text("Our Team",
                             style: TextStyle(
                              color: Color(0xff3498DB),
                              fontSize: 20,
                              fontFamily: "Mulish"
                             ),),
                           ),
                         ),
                        ),
        ),
        const Padding(
      padding: EdgeInsets.only(left: 340,top: 17),
      child: Icon(Icons.arrow_forward_ios,
        color:  Color(0xff3498DB),),
        ),
        // const Padding(
        //   padding: EdgeInsets.only(left: 38,top: 18),
        //   child: Icon(Icons.wysiwyg,
        //   color:  Color(0xff3498DB),),
        // )
      ],
       ),
                                     ],
                                   ),
                                 ),
                               ),
                              );
                            // ModalBottomSheet(
                            //   animationController: animationController, 
                            //   scrollController: scrollController, 
                            //   expanded: expanded, 
                            //   onClosing: onClosing,
                            //    child: child)
                            // // Navigator.push(context,
                            //  CupertinoPageRoute(builder: (context) => const SettingsScreen()));
                          },
                           child: const Padding(
                             padding: EdgeInsets.only(left: 45, top: 14),
                             child: Text("About DELTAX",
                             style: TextStyle(
                              color: Color(0xff3498DB),
                              fontSize: 20,
                              fontFamily: "Mulish"
                             ),),
                           ),
                         ),
                        ),
    ),
    MediaQuery(
        data: MediaQuery.of(context) ,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 5.8,
        child: const Padding(
          padding: EdgeInsets.only(left: 320, top: 20),
          child: Icon(Icons.arrow_forward_ios,
            color:  Color(0xff3498DB),),
        ),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 38,top: 18),
      child: Icon(Icons.people,
      color:  Color(0xff3498DB),),
    )
  ],
 ),
 
          ],
        ),
      )
    ),
    
    );
  }
}