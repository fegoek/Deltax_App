import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/my_receipt_screen.dart';
import 'package:deltax/screens/obtain_tcc_screen.dart';
import 'package:deltax/widgets/taxcalculator_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelfServiceScreen extends StatefulWidget {
  const SelfServiceScreen({super.key});

  @override
  State<SelfServiceScreen> createState() => _SelfServiceScreenState();
}

class _SelfServiceScreenState extends State<SelfServiceScreen> {
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
             MaterialPageRoute(builder: (context) => const IndividualHomeScreen()));
          }, icon: const Icon(Icons.arrow_back, color: Colors.white,),);
        },),
        toolbarHeight: 70,
      backgroundColor: const Color(0xff3498DB),
      centerTitle: true,
      title: const Text("Self Service",
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
               const SizedBox(height: 95),
           Stack(
                  children:[ 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          CupertinoPageRoute(builder: (context) => const ObtainTCCScreen()));
                      },
                      child: Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 150,
                      width: 350,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: const Color(0xff3498DB)),
                        ),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40,left: 20),
                        child: GestureDetector(
                          onTap: () {
                             Navigator.push(
                          context, 
                          CupertinoPageRoute(builder: (context) => const ObtainTCCScreen()));
                          },
                          child: const Text('Obtain My Tax\nClearance\nCertificate',style: TextStyle(
                            fontWeight: FontWeight.bold,color: 
                            Colors.white,
                            fontSize: 18),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220,top: 50),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                               CupertinoPageRoute(
                                builder: (context) => const ObtainTCCScreen()));
                          },
                          child: Image.asset('assets/images/img6.png')),
                      )]
                ),
              //  Container(
              //   height: 10,width: double.infinity,
              // decoration: const BoxDecoration(
              //   boxShadow: [BoxShadow
              //   (spreadRadius: 2,blurRadius: 2,
              // color: Color.fromARGB(85, 0, 0, 0))],
              //   borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(30),
              // bottomRight: Radius.circular(30)),
              //   color:Color(0xff3498DB)),),
                const SizedBox(height: 15),
           Stack(
                  children:[
                     GestureDetector(
                      onTap: () {
                         Navigator.push(context,
                             CupertinoPageRoute(builder:
                              (context) => const MyReceiptScreen()));
                      },
                       child: Container(
                                         // height: sizeConfig.blockV! * 5.1,
                                         height: 150,
                                         width: 350,
                                         decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: const Color(0xff3498DB)),
                        ),
                     ),
                       Padding(
                        padding: const EdgeInsets.only(top: 40,left: 20),
                        child: GestureDetector(
                          onTap: () {
                             Navigator.push(context,
                             CupertinoPageRoute(builder:
                              (context) => const MyReceiptScreen()));
                          },
                          child: const Text('My Receipts',style: TextStyle(
                            fontWeight: FontWeight.bold,color: 
                            Colors.white,
                            fontSize: 18),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220,top: 50),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                             CupertinoPageRoute(builder:
                              (context) => const MyReceiptScreen()));
                          },
                          child: Image.asset('assets/images/ss_img1.png')),
                      )]
                ),
                 const SizedBox(height: 15),
           Stack(
                  children:[ 
                    GestureDetector(
                      onTap: () {
                         Navigator.push(context,
                             CupertinoPageRoute(builder: (context) => const TaxCalculatorWidget()));
                      },
                      child: Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 150,
                      width: 350,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: const Color(0xff3498DB)),
                        ),
                    ),
                       Padding(
                        padding: const EdgeInsets.only(top: 40,left: 20),
                        child: GestureDetector(
                          onTap: () {
                             Navigator.push(context,
                             CupertinoPageRoute(builder: (context) => const TaxCalculatorWidget()));
                          },
                          child: const Text('Tax Calculator',style: TextStyle(
                            fontWeight: FontWeight.bold,color: 
                            Colors.white,
                            fontSize: 18),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220,top: 50),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                             CupertinoPageRoute(builder: (context) => const TaxCalculatorWidget()));
                          },
                          child: Image.asset('assets/images/ss_img2.png')),
                      )]
                ),
                 const SizedBox(height: 15),
          //  Stack(
          //         children:[ Container(
          //           // height: sizeConfig.blockV! * 5.1,
          //           height: 150,
          //           width: 350,
          //           decoration:  BoxDecoration(
          //             borderRadius: BorderRadius.circular(15),
          //              color: const Color(0xff3498DB)),
          //             ),
          //             const Padding(
          //               padding: EdgeInsets.only(top: 40,left: 20),
          //               child: Text('File PAYE Annual\nReturn',style: TextStyle(
          //                 fontWeight: FontWeight.bold,color: 
          //                 Colors.white,
          //                 fontSize: 18),),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 240,top: 50),
          //               child: GestureDetector(
          //                 onTap: () {},
          //                 child: Image.asset('assets/images/ss_img3.png')),
          //             )]
          //       ),
          //        const SizedBox(height: 15),
          //  Stack(
          //         children:[ Container(
          //           // height: sizeConfig.blockV! * 5.1,
          //           height: 150,
          //           width: 350,
          //           decoration:  BoxDecoration(
          //             borderRadius: BorderRadius.circular(15),
          //              color: const Color(0xff3498DB)),
          //             ),
          //             const Padding(
          //               padding: EdgeInsets.only(top: 40,left: 20),
          //               child: Text('PAYE Monthly\nSchedule',style: TextStyle(
          //                 fontWeight: FontWeight.bold,color: 
          //                 Colors.white,
          //                 fontSize: 18),),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 230,top: 50),
          //               child: GestureDetector(
          //                 onTap: () {},
          //                 child: Image.asset('assets/images/ss_img4.png')),
          //             )]
          //       ), const SizedBox(height: 15),
          //  Stack(
          //         children:[ Container(
          //           // height: sizeConfig.blockV! * 5.1,
          //           height: 150,
          //           width: 350,
          //           decoration:  BoxDecoration(
          //             borderRadius: BorderRadius.circular(15),
          //              color: const Color(0xff3498DB)),
          //             ),
          //             const Padding(
          //               padding: EdgeInsets.only(top: 40,left: 20),
          //               child: Text('Pay other Levies',style: TextStyle(
          //                 fontWeight: FontWeight.bold,color: 
          //                 Colors.white,
          //                 fontSize: 18),),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 220,top: 50),
          //               child: GestureDetector(
          //                 onTap: () {},
          //                 child: Image.asset('assets/images/ss_img5.png')),
          //             )]
          //       ),
           ])
           ))) );
  }
}