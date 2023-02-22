import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaxCalculatorWidget extends StatefulWidget {
  const TaxCalculatorWidget({super.key});

  @override
  State<TaxCalculatorWidget> createState() => _TaxCalculatorWidgetState();
}

class _TaxCalculatorWidgetState extends State<TaxCalculatorWidget> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      
      appBar: AppBar(
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
      title: const Text("Income Tax Calculator",
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
               Container(
                height: 10,width: double.infinity,
              decoration: const BoxDecoration(
                boxShadow: [BoxShadow
                (spreadRadius: 2,blurRadius: 2,
              color: Color.fromARGB(85, 0, 0, 0))],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
                color:Color(0xff3498DB)),),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "Gross Income",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 25),
 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "Other Earned Income (If any)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 25),
 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "Health Insurance (If any)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 25),
 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "Housing Fund (If any)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 25),
 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "Life Assurance (If any)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 25),
 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "Pension Fund(If any)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 75),
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
                               builder: (context) => Container(
                                height: 1500,
                                child: Center(
                                  child: Column(
                                    children:  [
                                      const SizedBox(height: 40),
                                      const Text("Tax Summary",
                                      style: TextStyle(
                                        fontFamily: "Mulish",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                      ),),
const SizedBox(height: 20),
 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "2,000,000              (Gross Income)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 25),
 Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "1,650,000           (Taxable Income)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 25),
 Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "156,750 (Taxable Payable Annually)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                const SizedBox(height: 25),
 Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
  decoration: const InputDecoration(
    prefixIcon: Icon(Icons.money, color: Color(0xff3498DB),size: 30,),
    hintText: "13,062.5 (Taxable Payable Monthly)",
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    )
  ),
),
                ),
                                    ],
                                  ),
                                )));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const  Color(0xff3498DB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                             
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 120,right: 120,top: 15,bottom: 15),
                              child: Text("Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Mulish",
                                fontSize: 22
                              ),),
                            ),
                          ),
            ])
            )
            )
            )
     );
  }
}