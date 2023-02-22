import 'dart:ui';

import 'package:deltax/screens/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaxRecordScreen extends StatefulWidget {
  const TaxRecordScreen({super.key});

  @override
  State<TaxRecordScreen> createState() => _TaxRecordScreenState();
}

class _TaxRecordScreenState extends State<TaxRecordScreen> {
   final _formKey = GlobalKey<FormState>();
   final TextEditingController dateinput= TextEditingController();


     @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }
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
      title: const Text("Tax Records",
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
            child: Form(
              key: _formKey,
              child: Column(
                children:  [
                  const SizedBox(height: 30),
            const Text("Find Payment History",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Mulish"
            ),),
            const SizedBox(height: 70),
            Row(
              children:  [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 10),
                    child: TextField(
                      controller: dateinput,
                      decoration: const InputDecoration(
              prefixIcon: Icon(Icons.calendar_today),
              hintText: "2022-06-08"
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15,left: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
              hintText: "Search by Tax purpose"
                      ),
                       readOnly: true,  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );
                    
                    if(pickedDate != null ){
                        print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                        print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement
            
                        setState(() {
                           dateinput.text = formattedDate; //set output date to TextField value. 
                        });
                    }else{
                        print("Date is not selected");
                    }
                  },
                    ),
                  ),
                )
              ],
            ),
             const SizedBox(height: 50),
                      ElevatedButton(
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
                                 builder: (context) => Column(
                                   children: [
                                     ListView(
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                       children: [
                                         ListTile(
                                           leading: Image.asset("assets/images/delta.png",scale: 0.5,),
                                           title: const Text("DBIR",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                             fontWeight: FontWeight.w600
                                           ),),
                                           subtitle: const Text("PAYE Tax\n8th Sept, 2022",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                           ),),
                                           trailing: const Text("₦120,000",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish"
                                           ),),
                                         ),
                                         ListTile(
                                           leading: Image.asset("assets/images/delta.png",scale: 0.5,),
                                           title: const Text("DBIR",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                             fontWeight: FontWeight.w600
                                           ),),
                                           subtitle: const Text("Withholding Tax\n9th Aug, 2022",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                           ),),
                                           trailing: const Text("₦200,000",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish"
                                           ),),
                                         ),
                                         ListTile(
                                           leading: Image.asset("assets/images/delta.png",scale: 0.5,),
                                           title: const Text("DBIR",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                             fontWeight: FontWeight.w600
                                           ),),
                                           subtitle: const Text("PAYE Tax\n5th Aug, 2022",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                           ),),
                                           trailing: const Text("₦120,000",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish"
                                           ),),
                                         ),
                                         ListTile(
                                           leading: Image.asset("assets/images/delta.png",scale: 0.5,),
                                           title: const Text("DBIR",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                             fontWeight: FontWeight.w600
                                           ),),
                                           subtitle: const Text("Learner's Permit\n15th July, 2022",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                           ),),
                                           trailing: const Text("₦40,000",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish"
                                           ),),
                                         ),
                                         ListTile(
                                           leading: Image.asset("assets/images/delta.png",scale: 0.5,),
                                           title: const Text("DBIR",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                             fontWeight: FontWeight.w600
                                           ),),
                                           subtitle: const Text("PAYE Tax\n8th July, 2022",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish",
                                           ),),
                                           trailing: const Text("₦120,000",
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontFamily: "Mulish"
                                           ),),
                                         ),
                                       ],
                                     )
                                   ],
                                 ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const  Color(0xff3498DB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                               
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 130,right: 130,top: 15,bottom: 15),
                                child: Text("Search",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Mulish",
                                  fontSize: 22
                                ),),
                              ),
                            ),
                ]
                ),
            ),
          )),
    );
  }
}