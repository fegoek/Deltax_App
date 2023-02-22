import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/individual_screen.dart';
import 'package:deltax/screens/organisation_home.dart';
import 'package:deltax/screens/organisation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'individual_screen2.dart';

class OrganisationScreen2 extends StatefulWidget {
  const OrganisationScreen2({super.key});

  @override
  State<OrganisationScreen2> createState() => _OrganisationScreen2State();
}

class _OrganisationScreen2State extends State<OrganisationScreen2> {

bool ? check3 = false;

 final _formKey = GlobalKey<FormState>();
  final TextEditingController rcno = TextEditingController();
  final TextEditingController dateinput= TextEditingController();
  final TextEditingController paye = TextEditingController();
  final TextEditingController contactname = TextEditingController();
  final TextEditingController contactphone = TextEditingController();

 @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     var _selectedValue;
    return Scaffold(
       backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children:  [
            const SizedBox(height: 50),
             const Text("Let's get to know You more",
                  style: TextStyle(
                    color:  Color(0xff3498DB),
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Mulish"
                  ),),
                  const SizedBox(height: 25),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'CAC/Rc No.',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '*',
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
                      controller: rcno,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "567654",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Rc No. is Required';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'CAC Registration Date',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Poppins',
                                  fontSize: 15))
                        ])),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      controller: dateinput,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                        prefixIcon: const Icon(Icons.calendar_today),
                          hintText: "Select",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Registration Date is Required';
                        }
                        return null;
                      },
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
                  const SizedBox(height: 5),
                 Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Business Ownership',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '*',
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
  items: <String>['Sole Proprietorship', 'Partnership', "Limited Partnership","Limited Liability Company","Corporation"]
    .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
),
                  ),
                   const SizedBox(height: 5),
                   Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Number of PAYE',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '*',
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
                      controller: paye,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Field is Required';
                        }
                        return null;
                      },
                    ),
                  ),
                   const SizedBox(height: 5),
                   Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Contact Name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Poppins',
                                  fontSize: 15))
                        ])),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: contactname,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "Micheal John",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Field is Required';
                        }
                        return null;
                      },
                    ),
                  ),
                   const SizedBox(height: 5),
                   Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Contact Phone No.',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '*',
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
                      controller: contactphone,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "08070089001",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Field is Required';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 5),
                   Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'State',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '*',
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
  items: <String>['Delta State']
    .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
),
                  ),
                  const SizedBox(height: 5),
                   Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'LGA',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mulish',
                                  fontSize: 18)),
                          TextSpan(
                              text: '*',
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
  items: <String>[
    "Ethiope East",
    "Ethiope West",
    "Okpe",
    "Sapele",
    "Udu",
    "Ughelli North",
    "Ughelli South",
    "Uvwie",
    "Aniocha North",
    "Aniocha South",
    "Ika South",
    "Ika Northeast",
    "Ndokwa East",
    "Ndokwa West",
    "Oshimili South",
    "Oshimili North",
    "Ukwuani",
    "Bomadi",
    "Burutu",
    "Isoko South",
    "Isoko North",
    "Patani",
    "Warri South",
"Warri North",
"Warri Southwest"
  ]
    .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
),
                  ),
              //      const SizedBox(height: 5),
              //      Container(
              //       alignment: Alignment.bottomLeft,
              //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //       child: RichText(
              //           textAlign: TextAlign.left,
              //           text: const TextSpan(children: <TextSpan>[
              //             TextSpan(
              //                 text: 'NIN',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w600,
              //                     fontFamily: 'Mulish',
              //                     fontSize: 18)),
              //             TextSpan(
              //                 text: '*',
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
              //         controller: nin,
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
              //             return 'NIN is Required';
              //           }
              //           return null;
              //         },
              //       ),
              //     ),
              //      const SizedBox(height: 5),
              //      Container(
              //       alignment: Alignment.bottomLeft,
              //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //       child: RichText(
              //           textAlign: TextAlign.left,
              //           text: const TextSpan(children: <TextSpan>[
              //             TextSpan(
              //                 text: 'Business Type',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w600,
              //                     fontFamily: 'Mulish',
              //                     fontSize: 18)),
              //             TextSpan(
              //                 text: '*',
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
              //         controller: businesstype,
              //         decoration: InputDecoration(
              //           contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
              //           border: OutlineInputBorder(
              //  borderRadius: BorderRadius.circular(15)           
              //           ),
              //             hintText: "Agriculture, Technology etc",
              //             filled: true,
              //             fillColor: const Color.fromARGB(255, 246, 245, 245),
              //             //enabledBorder: InputBorder.none),
              //         ),
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'Business Type is Required';
              //           }
              //           return null;
              //         },
              //       ),
              //     ),
              //      const SizedBox(height: 5),
              //      Container(
              //       alignment: Alignment.bottomLeft,
              //       padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //       child: RichText(
              //           textAlign: TextAlign.left,
              //           text: const TextSpan(children: <TextSpan>[
              //             TextSpan(
              //                 text: 'Business Address',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w600,
              //                     fontFamily: 'Mulish',
              //                     fontSize: 18)),
              //             TextSpan(
              //                 text: '*',
              //                 style: TextStyle(
              //                     color: Colors.red,
              //                     fontFamily: 'Poppins',
              //                     fontSize: 15))
              //           ])),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
              //       child: TextFormField(
              //         keyboardType: TextInputType.streetAddress,
              //         controller: businessaddress,
              //         decoration: InputDecoration(
              //           contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
              //           border: OutlineInputBorder(
              //  borderRadius: BorderRadius.circular(15)           
              //           ),
              //             hintText: "4, Ahmadu Bello Way, Ajah",
              //             filled: true,
              //             fillColor: const Color.fromARGB(255, 246, 245, 245),
              //             //enabledBorder: InputBorder.none),
              //         ),
              //         validator: (value) {
              //           if (value == null || value.isEmpty) {
              //             return 'Business Address is Required';
              //           }
              //           return null;
              //         },
              //       ),
              //     ),
                  const SizedBox(height: 10),
                  CheckboxListTile( //checkbox positioned at left
                    value: check3,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {  
                        setState(() {
                           check3 = value;
                        });
                    },
                    title: const Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Text("I have read, understood and hereby agree\nto the Terms & Conditions and Privacy Policy stated below of using this services"),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 72),
                          child: Text("Terms & Condition",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text("and",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),),
                       const SizedBox(width: 5),
                        GestureDetector(
                        onTap: () {
                          
                        },
                        child: const Text("Privacy Policy",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                              CupertinoPageRoute(
                                builder: (context) => const IndividualHomeScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const  Color(0xff3498DB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                             
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 100,right: 100,top: 15,bottom: 15),
                              child: Text("Create Account",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Mulish",
                                fontSize: 20
                              ),),
                            ),
                          ),
                           const SizedBox(height: 40),
                            Center(
                              child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => const OrganisationScreen()));
                          
                        },
                        child: const Text("Go Back",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                            ),
                       const SizedBox(width: 50),
                  ]
    )
            )
          )
        )
     ) );
  }
}