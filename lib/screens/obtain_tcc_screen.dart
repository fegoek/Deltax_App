import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/self_service_screen.dart';
import 'package:deltax/util/constant.dart';
import 'package:deltax/util/web_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ObtainTCCScreen extends StatefulWidget {
  const ObtainTCCScreen({super.key});

  @override
  State<ObtainTCCScreen> createState() => _ObtainTCCScreenState();
}

class _ObtainTCCScreenState extends State<ObtainTCCScreen> {
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
             MaterialPageRoute(builder: (context) => const SelfServiceScreen()));
          }, icon: const Icon(Icons.arrow_back, color: Colors.white,),);
        },),
        toolbarHeight: 70,
      backgroundColor: const Color(0xff3498DB),
      centerTitle: true,
      title: const Text("Obtain TCC",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),),
        actions: [
         Padding(
       padding: const EdgeInsets.only(right: 20,top: 15,bottom: 15),
      child: Container(height: 10,
      width: 40,
      decoration: BoxDecoration(//color: Colors.red,
      boxShadow: const [
        BoxShadow(
          blurStyle: BlurStyle.outer,
      spreadRadius: 1,
      offset: Offset(0.75, 2.0),
        blurRadius: 5)],
      borderRadius: BorderRadius.circular(200)
      ),
      child: const Icon(
      Icons.notifications_outlined,color: Colors.white,),
      ),)
        ],),
        body: SafeArea(
          child: Center(
            child: Column(
              children:  [
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.only(left: 50,right: 15),
                  child: Text("Request by applying to the\n relevant tax office nearest to you\n for electronic tax clearance\n certificate (etcc) with receipts of your payments for three years\n prior to the year of request;",
                  style: TextStyle(
                    fontSize: 18,
                   fontWeight: FontWeight.w600,
                   fontFamily: "Mulish"
                   ),),
                ),
                 const SizedBox(height: 12),
                 const Padding(
                   padding: EdgeInsets.only(left: 50,right: 15),
                   child: Text("The relevant tax office will perusen the documents and ask questions where necessary;",
                   style: TextStyle(
                      fontSize: 18,
                     fontWeight: FontWeight.w600,
                     fontFamily: "Mulish"
                     ),
                   ),
                 ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.only(left: 50,right: 15),
                    child: Text("If the relevant tax office is satisfied, he/she will request for etcc to be issued in your favour;",
                    style: TextStyle(
                      fontSize: 18,
                     fontWeight: FontWeight.w600,
                     fontFamily: "Mulish"
                     ),),
                  ),
                   const SizedBox(height: 12),
                   const Padding(
                     padding: EdgeInsets.only(left: 50,right: 15),
                     child: Text("You will receive a notification (sms or email) from the relevant tax office that your etcc is ready:",
                     style: TextStyle(
                      fontSize: 18,
                     fontWeight: FontWeight.w600,
                     fontFamily: "Mulish"
                     ),),
                   ),
                    const SizedBox(height: 12),
                    const Padding(
                      padding: EdgeInsets.only(left: 50,right: 15),
                      child: Text("Use the information contained in the notification to print your etcc after logging in to",
                      style: TextStyle(
                      fontSize: 18,
                   fontWeight: FontWeight.w600,
                   fontFamily: "Mulish"
                   ),),
                    ),
                    const SizedBox(height: 50),
                     ElevatedButton.icon(
                            onPressed: () {
                              // Navigator.push(
                              //   context, 
                              // CupertinoPageRoute(
                              //   builder: (context) => const IndividualHomeScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const  Color(0xff3498DB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                             
                            ),
                            // icon: const Icon(Icons.download_outlined,
                            // color: Colors.white,),
                            label:  Padding(
                              padding: const EdgeInsets.only(left: 100,right: 100,top: 15,bottom: 15),
                              child: GestureDetector(
                                onTap: () =>  openURL(StaticUtils.help),
                                child: const Text("Download",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Mulish",
                                  fontSize: 22
                                ),),
                              ),
                            ),
                             icon: const Icon(Icons.download_outlined,
                            color: Colors.white,),
                          ),
              ]),
          )),
    );
  }
}