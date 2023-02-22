import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/payment_screen2.dart';
import 'package:deltax/widgets/taxcalculator_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {


 final _formKey = GlobalKey<FormState>();
  final TextEditingController surname = TextEditingController();
   final TextEditingController firstname = TextEditingController();
  final TextEditingController stin = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController amount = TextEditingController();
  TextEditingController dateinput = TextEditingController(); 

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     var _selectedValue;
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
      child: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 12),
              //      Container(
              //       alignment: Alignment.bottomLeft,
              //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //       child: RichText(
              //           textAlign: TextAlign.left,
              //           text: const TextSpan(children: <TextSpan>[
              //             TextSpan(
              //                 text: 'Surname',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w600,
              //                     fontFamily: 'Mulish',
              //                     fontSize: 18)),
              //             TextSpan(
              //                 text: '',
              //                 style: TextStyle(
              //                     color: Colors.red,
              //                     fontFamily: 'Poppins',
              //                     fontSize: 15))
              //           ])),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
              //       child: TextFormField(
              //         keyboardType: TextInputType.name,
              //         controller: surname,
              //         decoration: InputDecoration(
              //           contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
              //           border: OutlineInputBorder(
              //  borderRadius: BorderRadius.circular(15)           
              //           ),
              //             hintText: "John",
              //             filled: true,
              //             fillColor: const Color.fromARGB(255, 246, 245, 245),
              //             //enabledBorder: InputBorder.none),
              //         ),
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'Surname is required';
              //           }
              //           return null;
              //         },
              //       ),
              //     ),
              //      const SizedBox(height: 8),
              //      Container(
              //       alignment: Alignment.bottomLeft,
              //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //       child: RichText(
              //           textAlign: TextAlign.left,
              //           text: const TextSpan(children: <TextSpan>[
              //             TextSpan(
              //                 text: 'First Name',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w600,
              //                     fontFamily: 'Mulish',
              //                     fontSize: 18)),
              //             TextSpan(
              //                 text: '',
              //                 style: TextStyle(
              //                     color: Colors.red,
              //                     fontFamily: 'Poppins',
              //                     fontSize: 15))
              //           ])),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
              //       child: TextFormField(
              //         keyboardType: TextInputType.name,
              //         controller: firstname,
              //         decoration: InputDecoration(
              //           contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
              //           border: OutlineInputBorder(
              //  borderRadius: BorderRadius.circular(15)           
              //           ),
              //             hintText: "Doe",
              //             filled: true,
              //             fillColor: const Color.fromARGB(255, 246, 245, 245),
              //             //enabledBorder: InputBorder.none),
              //         ),
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'firstname is required';
              //           }
              //           return null;
              //         },
              //       ),
              //     ),
              //     const SizedBox(height: 8),
              //      Container(
              //       alignment: Alignment.bottomLeft,
              //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //       child: RichText(
              //           textAlign: TextAlign.left,
              //           text: const TextSpan(children: <TextSpan>[
              //             TextSpan(
              //                 text: 'Email',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w600,
              //                     fontFamily: 'Mulish',
              //                     fontSize: 18)),
              //             TextSpan(
              //                 text: '',
              //                 style: TextStyle(
              //                     color: Colors.red,
              //                     fontFamily: 'Poppins',
              //                     fontSize: 15))
              //           ])),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
              //       child: TextFormField(
              //         keyboardType: TextInputType.emailAddress,
              //         controller: email,
              //         decoration: InputDecoration(
              //           contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
              //           border: OutlineInputBorder(
              //  borderRadius: BorderRadius.circular(15)           
              //           ),
              //             hintText: "example@gmail.com",
              //             filled: true,
              //             fillColor: const Color.fromARGB(255, 246, 245, 245),
              //             //enabledBorder: InputBorder.none),
              //         ),
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'Email is Required';
              //           }
              //           return null;
              //         },
              //       ),
              //     ),
              //     const SizedBox(height: 8),
              //      Container(
              //       alignment: Alignment.bottomLeft,
              //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //       child: RichText(
              //           textAlign: TextAlign.left,
              //           text: const TextSpan(children: <TextSpan>[
              //             TextSpan(
              //                 text: 'Phone Number',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w600,
              //                     fontFamily: 'Mulish',
              //                     fontSize: 18)),
              //             TextSpan(
              //                 text: '',
              //                 style: TextStyle(
              //                     color: Colors.red,
              //                     fontFamily: 'Poppins',
              //                     fontSize: 15))
              //           ])),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
              //       child: TextFormField(
              //         keyboardType: TextInputType.phone ,
              //         controller: phone,
              //         decoration: InputDecoration(
              //           contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
              //           border: OutlineInputBorder(
              //  borderRadius: BorderRadius.circular(15)           
              //           ),
              //             hintText: "07060000000",
              //             filled: true,
              //             fillColor: const Color.fromARGB(255, 246, 245, 245),
              //             //enabledBorder: InputBorder.none),
              //         ),
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'Phone Number is required';
              //           }
              //           return null;
              //         },
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.bottomLeft,
              //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //       child: RichText(
              //           textAlign: TextAlign.left,
              //           text: const TextSpan(children: <TextSpan>[
              //             TextSpan(
              //                 text: 'STIN',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w600,
              //                     fontFamily: 'Mulish',
              //                     fontSize: 18)),
              //             TextSpan(
              //                 text: '',
              //                 style: TextStyle(
              //                     color: Colors.red,
              //                     fontFamily: 'Poppins',
              //                     fontSize: 15))
              //           ])),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
              //       child: TextFormField(
              //         keyboardType: TextInputType.number,
              //         controller: stin,
              //         decoration: InputDecoration(
              //           contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
              //           border: OutlineInputBorder(
              //  borderRadius: BorderRadius.circular(15)           
              //           ),
              //             hintText: "12345678980",
              //             filled: true,
              //             fillColor: const Color.fromARGB(255, 246, 245, 245),
              //             //enabledBorder: InputBorder.none),
              //         ),
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'STIN is Required';
              //           }
              //           return null;
              //         },
              //       ),
              //     ),
              //     const SizedBox(height: 8),
                   Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Tax Type',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Poppins',
                                  fontSize: 15))
                        ])),
                  ),
                  Container(
                     padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
                    child: DropdownButtonFormField<String>(
  value: _selectedValue,
  onChanged: (newValue) {
    setState(() {
      _selectedValue = newValue;
    });
  },
  decoration:  InputDecoration(
     contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    hintText: "Select",
     filled: true,
                            fillColor: const Color.fromARGB(255, 246, 245, 245),
  ),
  items: <String>['Self Employed (Personal Income tax)', 'Withholding tax', "Learner's Permit (Road Tax)","PAYE Tax"]
    .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
),
                  ),
                  const SizedBox(height: 8),
                   Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Assessed Amount',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Poppins',
                                  fontSize: 15))
                        ])),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: amount,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          // hintText: "example@gmail.com",
                          prefixText: "₦",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Amount is Required';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                              child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Text(
                                  "Self Assessment?",
                                  style: TextStyle(
                                  
                                    fontFamily: "Mulish",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TaxCalculatorWidget()));
                                  },
                                  child: const Text(
                                    "Use Tax Calculator",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.blue),
                                  ))
            ],
          ),),
          const SizedBox(height: 8),
                 Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Period (From)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Poppins',
                                  fontSize: 15))
                        ])),
                  ),
                  Container(
                     padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
                     child:TextField(
                controller: dateinput, //editing controller of this TextField
                decoration:  InputDecoration( 
                   contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                        prefixIcon: const Icon(Icons.calendar_today)
                  // icon: const Icon(Icons.calendar_today), //icon of text field
                  // labelText: "Enter Date" //label text of field
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
              const SizedBox(height: 8),
                 Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Period (To)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Poppins',
                                  fontSize: 15))
                        ])),
                  ),
                  Container(
                     padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
                     child:TextField(
                controller: dateinput, //editing controller of this TextField
                decoration:  InputDecoration( 
                   contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                        prefixIcon: const Icon(Icons.calendar_today)
                  // icon: const Icon(Icons.calendar_today), //icon of text field
                  // labelText: "Enter Date" //label text of field
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
             )
                  ),
             const SizedBox(height: 50),
             ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                              CupertinoPageRoute(
                                builder: (context) => const PaymentScreen2()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const  Color(0xff3498DB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                             
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 110,right: 110,top: 15,bottom: 15),
                              child: Text("Proceed",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Mulish",
                                fontSize: 22
                              ),),
                            ),
                          ),
                          const SizedBox(height: 30),
             ]
            )
          ),
        ),
      )),
    );
}
}