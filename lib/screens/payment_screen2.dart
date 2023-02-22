import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/payment_screen.dart';
import 'package:deltax/util/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/web_utility.dart';


class PaymentScreen2 extends StatefulWidget {
  const PaymentScreen2({super.key});

  @override
  State<PaymentScreen2> createState() => _PaymentScreen2State();
}

class _PaymentScreen2State extends State<PaymentScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:  const Color(0xff021F33),
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
             MaterialPageRoute(builder: (context) => const PaymentScreen()));
          }, icon: const Icon(Icons.arrow_back, color: Colors.white,),);
        },),
        toolbarHeight: 70,
      backgroundColor: const Color(0xff3498DB),
      centerTitle: true,
      title: const Text("Payment Details",
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
          child: Column(
            children:  [
              const SizedBox(height: 319),
              GestureDetector(
                onTap: () {
 showModalBottomSheet(
  backgroundColor:  const Color(0xff3498DB),
                               shape: const RoundedRectangleBorder
        (
           borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
        ),),
                              context: context,
                               builder: (context) => Container(
                                height: 1500,
                                child: Column(
                                  children: [
                                          const SizedBox(height: 35),
                                          Container(
                                          // height: sizeConfig.blockV! * 5.1,
                                          height: 100,
                                          width: 300,
                                          decoration:  BoxDecoration(
                                             gradient:  const LinearGradient( 
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                             colors: [Color.fromARGB(255, 19, 18, 18),  Color(0xff3498DB)], 
                                           ),
                                             boxShadow: const [BoxShadow
                                             (spreadRadius: 6,blurRadius: 4,
                                           color: Color.fromARGB(85, 0, 0, 0),
                                           
                                           )
                                           ],
                                            borderRadius: BorderRadius.circular(15),
                                             color: const Color(0xff3498DB)
                                             ),
                                              child: GestureDetector(
                                                onTap: () {

                                                  showDialog(
                context: context,
                builder: (ctx) =>  AlertDialog(
                  icon: const Icon(Icons.check_circle,
                  size: 90,),
                  iconColor: Colors.green,
                  title: const Padding(
                    padding: EdgeInsets.only(left: 5,top: 25),
                    child: Text("Thank You",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  content: const Padding(
                    padding: EdgeInsets.only(top: 5,left: 10),
                    child: Text("Your payment is Successful",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  actions: <Widget>[
                    
  Padding(
    padding: const EdgeInsets.only(right: 20),
    child: ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
  // backgroundColor:  const Color(0xff3498DB),
                               shape: const RoundedRectangleBorder
        (
           borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
        ),),
                              context: context,
                               builder: (context) => Container(
                                height: 1500,
                                child: Column(
                                  children:  [
                                    const SizedBox(height: 100),
                                    const Text("Your receipt is ready for share and download",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w600
                                    ),),
                                    const SizedBox(height: 30),
                                    Image.asset("assets/images/receipt1.png",
                                  ),
                                  const SizedBox(height: 50),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 50),
                                          child: Image.asset("assets/images/vector2.png"),
                                        ),
                                       // const SizedBox(width: 20),
                                          Image.asset("assets/images/vector3.png"),
                                         // const SizedBox(width: 20),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 50),
                                            child: GestureDetector(
                                              onTap: () => openURL(StaticUtils.help),
                                              child: const Icon(Icons.download)),
                                          )
                                    ],
                                  )
                                  ],
                                )));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const  Color(0xff3498DB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                               
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 50,right: 50,top: 5,bottom: 5),
                                child: Text("Okay",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Mulish",
                                  fontSize: 22
                                ),),
                              ),
                            ),
  ),
                  ],
                ));
                                                },
                                                child: Image.asset('assets/images/remita.png',
                                                scale: 3,)),
                                            ),
                                            const SizedBox(height: 45),
           Container(
           // height: sizeConfig.blockV! * 5.1,
           height: 100,
           width: 300,
           decoration:  BoxDecoration(
              gradient:  const LinearGradient( 
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 19, 18, 18),  Color(0xff3498DB)], 
            ),
              boxShadow: const [BoxShadow
              (spreadRadius: 6,blurRadius: 4,
            color: Color.fromARGB(85, 0, 0, 0),
            
            )
            ],
             borderRadius: BorderRadius.circular(15),
              color: const Color(0xff3498DB)
              ),
               child: GestureDetector(
                 onTap: () {
                               showDialog(
                context: context,
                builder: (ctx) =>  AlertDialog(
                  icon: const Icon(Icons.check_circle,
                  size: 90,),
                  iconColor: Colors.green,
                  title: const Padding(
                    padding: EdgeInsets.only(left: 5,top: 25),
                    child: Text("Thank You",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  content: const Padding(
                    padding: EdgeInsets.only(top: 5,left: 10),
                    child: Text("Your payment is Successful",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  actions: <Widget>[
                    
  Padding(
    padding: const EdgeInsets.only(right: 20),
    child: ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
  // backgroundColor:  const Color(0xff3498DB),
                               shape: const RoundedRectangleBorder
        (
           borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
        ),),
                              context: context,
                               builder: (context) => Container(
                                height: 1500,
                                child: Column(
                                  children:  [
                                    const SizedBox(height: 100),
                                    const Text("Your receipt is ready for share and download",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w600
                                    ),),
                                    const SizedBox(height: 30),
                                    Image.asset("assets/images/receipt1.png",
                                  ),
                                  const SizedBox(height: 50),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 50),
                                          child: Image.asset("assets/images/vector2.png"),
                                        ),
                                       // const SizedBox(width: 20),
                                          Image.asset("assets/images/vector3.png"),
                                         // const SizedBox(width: 20),
                                           Padding(
                                            padding: const EdgeInsets.only(right: 50),
                                            child: GestureDetector(
                                              onTap: () => openURL(StaticUtils.help),
                                              child: const Icon(Icons.download)),
                                          )
                                    ],
                                  )
                                  ],
                                )));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const  Color(0xff3498DB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                               
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 50,right: 50,top: 5,bottom: 5),
                                child: Text("Okay",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Mulish",
                                  fontSize: 22
                                ),),
                              ),
                            ),
  ),
                  ],
                ));
                 },
                 child: Image.asset('assets/images/payW.png',
                 scale: 3,)),
             ),
              const SizedBox(height: 45),
           Container(
           // height: sizeConfig.blockV! * 5.1,
           height: 100,
           width: 300,
           decoration:  BoxDecoration(
              gradient:  const LinearGradient( 
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 19, 18, 18),  Color(0xff3498DB)], 
            ),
              boxShadow: const [BoxShadow
              (spreadRadius: 6,blurRadius: 4,
            color: Color.fromARGB(85, 0, 0, 0),
            
            )
            ],
             borderRadius: BorderRadius.circular(15),
              color: const Color(0xff3498DB)
              ),
               child: GestureDetector(
                 onTap: () {
                               showDialog(
                context: context,
                builder: (ctx) =>  AlertDialog(
                  icon: const Icon(Icons.check_circle,
                  size: 90,),
                  iconColor: Colors.green,
                  title: const Padding(
                    padding: EdgeInsets.only(left: 5,top: 25),
                    child: Text("Thank You",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  content: const Padding(
                    padding: EdgeInsets.only(top: 5,left: 10),
                    child: Text("Your payment is Successful",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  actions: <Widget>[
                    
  Padding(
    padding: const EdgeInsets.only(right: 20),
    child: ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
  // backgroundColor:  const Color(0xff3498DB),
                               shape: const RoundedRectangleBorder
        (
           borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
        ),),
                              context: context,
                               builder: (context) => Container(
                                height: 1500,
                                child: Column(
                                  children:  [
                                    const SizedBox(height: 100),
                                    const Text("Your receipt is ready for share and download",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w600
                                    ),),
                                    const SizedBox(height: 30),
                                    Image.asset("assets/images/receipt1.png",
                                  ),
                                  const SizedBox(height: 50),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 50),
                                          child: Image.asset("assets/images/vector2.png"),
                                        ),
                                       // const SizedBox(width: 20),
                                          Image.asset("assets/images/vector3.png"),
                                         // const SizedBox(width: 20),
                                            Padding(
                                            padding: const EdgeInsets.only(right: 50),
                                            child: GestureDetector(
                                              onTap: () => openURL(StaticUtils.help),
                                              child: const Icon(Icons.download)),
                                          )
                                    ],
                                  )
                                  ],
                                )));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const  Color(0xff3498DB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                               
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 50,right: 50,top: 5,bottom: 5),
                                child: Text("Okay",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Mulish",
                                  fontSize: 22
                                ),),
                              ),
                            ),
  ),
                  ],
                ));
                 },
                 child: Image.asset('assets/images/flutterW.png',
                 )),
             ),
            //  Padding(
            //    padding: const EdgeInsets.only(left: 50,bottom: 100),
            //    child: GestureDetector(
            //      onTap: () {},
            //      child: Image.asset('assets/images/pay.png',
            //      scale: 3,)),
            //  ),
                
                                  ],
                                )));
                },
                child: const Center(
                  child: Text("Select Your Preferred Payment Provider",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Mulish"
                  ),),
                ),
              )
          //     Container(
          // height: 450,
          // width: double.infinity,
          // decoration: const BoxDecoration(
          //     color:   Color(0xff3498DB),
          //     borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(35), topRight: Radius.circular(35))),)
            ],
          )
          ),
    );
  }
}