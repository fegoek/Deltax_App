import 'package:deltax/screens/self_service_screen.dart';
import 'package:flutter/material.dart';

class MyReceiptScreen extends StatefulWidget {
  const MyReceiptScreen({super.key});

  @override
  State<MyReceiptScreen> createState() => _MyReceiptScreenState();
}

class _MyReceiptScreenState extends State<MyReceiptScreen> {
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
      title: const Text("My Receipts",
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
              child: Column(
                children:  [
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                    
                    decoration: InputDecoration(prefixIcon: const Icon(Icons.search_outlined),
                      hintText: 'Search documents & Receipts',
                      contentPadding: const EdgeInsets.only(top: 15),
                      fillColor: Colors.white,
                      filled: true,
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(15)
                    )
                    )
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 150,
                      width: 150,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: const Color(0xff808E98)),
                         child: const Icon(Icons.folder_open_outlined,
                         size: 60,
                         color: Colors.white,),
                        ),
                         Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 150,
                      width: 150,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: const Color(0xff808E98)),
                         child: const Icon(Icons.folder_open_outlined,
                         size: 60,
                         color: Colors.white,),
                        ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                       Text("PAYE tax Receipts\nOct 2022",
                       style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Mulish"
                       ),),
                        Text("PAYE tax Receipts\nSept 2022",
                         style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Mulish"
                       ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 150,
                      width: 150,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: const Color(0xff808E98)),
                         child: const Icon(Icons.folder_open_outlined,
                         size: 60,
                         color: Colors.white,),
                        ),
                         Container(
                      // height: sizeConfig.blockV! * 5.1,
                      height: 150,
                      width: 150,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: const Color(0xff808E98)),
                         child: const Icon(Icons.folder_open_outlined,
                         size: 60,
                         color: Colors.white,),
                        ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
          Text("Withholding tax\n Receipts\nAug 2022",
                       style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Mulish"
                       ),),
                        Text("PAYE tax Return Form",
                         style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Mulish"
                       ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(right: 210),
                      child: Container(
                        // height: sizeConfig.blockV! * 5.1,
                        height: 150,
                        width: 150,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: const Color(0xff808E98)),
                           child: const Icon(Icons.folder_open_outlined,
                           size: 60,
                           color: Colors.white,),
                          ),
                    ),
                        const SizedBox(height: 10,),
                         const Padding(
                           padding: EdgeInsets.only(right: 210),
                           child: Text("Learner's Permit\n Receipt\nOct 2022",
                           style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Mulish"
                       ),
                        ),
                         ),
                ],
              ),
            ),
          )),
    );
  }
}