import 'package:deltax/model/user_model.dart';
import 'package:deltax/provider/auth_provider.dart';
import 'package:deltax/provider/user_provider.dart';
import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/login_screen.dart';
import 'package:deltax/screens/login_screen2.dart';
import 'package:deltax/screens/organisation_home.dart';
import 'package:deltax/screens/organisation_screen2.dart';
import 'package:deltax/screens/welcome_page.dart';
import 'package:deltax/util/http_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class OrganisationScreen extends StatefulWidget {
  const OrganisationScreen({super.key});

  @override
  State<OrganisationScreen> createState() => _OrganisationScreenState();
}

class _OrganisationScreenState extends State<OrganisationScreen> {


bool _isHidden = true;
  bool isChecked = false;

     final _formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController companyaddress = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController ConfirmPassword = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
final TextEditingController stin = TextEditingController();

bool ? check3 = false;

 
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
     final authProvider = Provider.of<AuthProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
      var _selectedValue;
     return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
            const SizedBox(height: 50),
             const Text("Let's get to know You more",
                  style: TextStyle(
                    color:  Color(0xff3498DB),
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Mulish"
                  ),),
                    const SizedBox(height: 25),
                   const Align(
                    alignment: Alignment.topLeft,
                     child: Padding(
               padding: EdgeInsets.only(left: 35),
               child: Text("Organisation Tax Payer Information",
                   style: TextStyle(
                fontSize: 20,
                fontFamily: "Mulish",
                fontWeight: FontWeight.w600
                   ),
                   ),
                  
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 31),
                     child: Row(
              children: const [
                Text("*",
                style: TextStyle(
                  color: Colors.red
                ),),
                Text("Fields are required",
                style: TextStyle(
                  fontFamily: "Mulish",
                  fontSize: 18,
                ),
                )
              ],
                     ),
                   ),
                   const SizedBox(height: 12),
                   Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'Corporate Name',
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
                      controller: name,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "Wemixon Holdings",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Corporate Name is required';
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
                              text: 'Company Address',
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
                      controller: companyaddress,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "123, Okpanam Road, Asaba",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Company Address is required';
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
                              text: 'STIN',
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
                      controller: stin,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "12345678980",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'STIN is Required';
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
                              text: 'Email',
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
                      keyboardType: TextInputType.emailAddress,
                      controller: email,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "example@gmail.com",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is Required';
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
                              text: 'Create Password',
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
                      obscureText: _isHidden,
                      controller: password,
                      decoration: InputDecoration(
                         suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isHidden = !_isHidden;
                                      });
                                    },
                                    icon: Icon(_isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password Value is Incorrect';
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
                              text: 'Confirm Password',
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
                      obscureText: _isHidden,
                      controller: ConfirmPassword,
                      decoration: InputDecoration(
                         suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isHidden = !_isHidden;
                                      });
                                    },
                                    icon: Icon(_isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password Value is Incorrect';
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
                              text: 'Phone Number',
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
                      keyboardType: TextInputType.phone ,
                      controller: phonenumber,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "07060000000",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone Number is required';
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
                               if (_formKey.currentState!.validate()) {
                                        authProvider
                                            .register(name.text, email.text,
                                                password.text)
                                            .then((response) {
                                          if (response["status"] == 500) {
                                            HttpService().showMessage(
                                                response["message"], context);
                                          } else {
                                            User user = User(
                                                user: response["data"].user,
                                                token: response["data"].token,
                                               //  email: response["data"].email,
                                                );
                                            userProvider.setUser(user);
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const OrganisationHome())
                                                        );
                                          }
                                        });
                                      }
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
                                            const SizedBox(height: 50),
                   Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 65),
                                child: Text(
                                  "Already have an Account?",
                                  style: TextStyle(
                                    fontFamily: "Mulish",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen2()));
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.blue),
                                  ))
            ],
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
                  //  ElevatedButton(
                  //           onPressed: () {
                  //             Navigator.push(
                  //               context, 
                  //             CupertinoPageRoute(
                  //               builder: (context) => const OrganisationScreen2()));
                  //           },
                  //           style: ElevatedButton.styleFrom(
                  //             backgroundColor: const  Color(0xff3498DB),
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(15),
                  //             ),
                             
                  //           ),
                  //           child: const Padding(
                  //             padding: EdgeInsets.only(left: 150,right: 150,top: 15,bottom: 15),
                  //             child: Text("Next",
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w600,
                  //               fontFamily: "Mulish",
                  //               fontSize: 20
                  //             ),),
                  //           ),
                  //         ),
                  //         const SizedBox(height: 40),
                  //           Center(
                  //             child: GestureDetector(
                  //       onTap: () {
                  //         Navigator.pop(
                  //           context,
                  //           MaterialPageRoute(builder: (context) => const WelcomeScreen()));
                          
                  //       },
                  //       child: const Text("Go Back",
                  //       style: TextStyle(
                  //           color: Colors.blueAccent,
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.w600
                  //       ),),
                  //     ),
                  //           ),
                  //      const SizedBox(width: 50),
//  Container(
//                     alignment: Alignment.bottomLeft,
//                     padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//                     child: RichText(
//                         textAlign: TextAlign.left,
//                         text: const TextSpan(children: <TextSpan>[
//                           TextSpan(
//                               text: 'Gender',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w600,
//                                   fontFamily: 'Mulish',
//                                   fontSize: 18)),
//                           TextSpan(
//                               text: '*',
//                               style: TextStyle(
//                                   color: Colors.red,
//                                   fontFamily: 'Poppins',
//                                   fontSize: 15))
//                         ])),
//                   ),
//                   Container(
//                      padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
//                     child: DropdownButtonFormField<String>(
//   value: _selectedValue,
//   onChanged: (newValue) {
//     setState(() {
//       _selectedValue = newValue;
//     });
//   },
//   decoration:  InputDecoration(
//      contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(15),
//     ),
//     hintText: "Select",
//      filled: true,
//                             fillColor: const Color.fromARGB(255, 246, 245, 245),
//   ),
//   items: <String>['Male', 'Female']
//     .map<DropdownMenuItem<String>>((String value) {
//       return DropdownMenuItem<String>(
//         value: value,
//         child: Text(value),
//       );
//     }).toList(),
// ),
//                   ),
//        const SizedBox(height: 10),
//  Container(
//                     alignment: Alignment.bottomLeft,
//                     padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//                     child: RichText(
//                         textAlign: TextAlign.left,
//                         text: const TextSpan(children: <TextSpan>[
//                           TextSpan(
//                               text: 'Marital Status',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w600,
//                                   fontFamily: 'Mulish',
//                                   fontSize: 18)),
//                           TextSpan(
//                               text: '*',
//                               style: TextStyle(
//                                   color: Colors.red,
//                                   fontFamily: 'Poppins',
//                                   fontSize: 15))
//                         ])),
//                   ),
//                   Container(
//                      padding: const EdgeInsets.only(left: 20, right: 20,top: 8),
//                     child: DropdownButtonFormField<String>(
//   value: _selectedValue,
//   onChanged: (newValue) {
//     setState(() {
//       _selectedValue = newValue;
//     });
//   },
//   decoration:  InputDecoration(
//      contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(15),
//     ),
//     hintText: "Select",
//      filled: true,
//                             fillColor: const Color.fromARGB(255, 246, 245, 245),
//   ),
//   items: <String>['Single', 'Married', "Divorced"]
//     .map<DropdownMenuItem<String>>((String value) {
//       return DropdownMenuItem<String>(
//         value: value,
//         child: Text(value),
//       );
//     }).toList(),
// ),
//                   ),

//                   FormField(
//   validator: (value) {
//     if (value == null) {
//       return 'Please select a value';
//     }
//     return null;
//   },
//   onSaved: (value) => _selectedValue = value,
//   builder: (FormFieldState state) {
//     return InputDecorator(
      
//      isEmpty: value == '',
//       decoration: InputDecoration(
//        errorText: state.hasError ? state.errorText : null,
//        ),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton(
//           value: _selectedValue,
//           items: <String> ["Male","Female"]
//               .map((value) => DropdownMenuItem(
//                     value: value,
//                     child: Text(value),
//                   ))
//               .toList(),
//           onChanged: (value) {
//             state.didChange(value);
//             setState(() {
//               _selectedValue = value;
//             });
//           },
//         ),
//       ),
//     );
//   },
// ),


                  // TextFormField(
                  //   decoration: const InputDecoration(
                  //     hintText: "Select Gender",
                  //     contentPadding: EdgeInsets.zero,
                  //   ),
                  //   validator: (value) {
                  //     if (value == null){
                  //       return "Please select your gender";
                  //     }
                  //     return null;
                  //   },
                  
                  //   ),
                
//                 TextFormField(
//   decoration: InputDecoration(
//     hintText: 'Select an option',
//     contentPadding: EdgeInsets.zero,
//   ),
//   validator: (value) {
//     if (value == null) {
//       return 'Please select an option';
//     }
//     return null;
//   },
//   builder: (TextFormField field) {
//     return InputDecorator(
//       decoration: field.decoration,
//       isEmpty: value == '',
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton<String>(
//           value: value,
//           isDense: true,
//           onChanged: (String newValue) {
//             setState(() {
//               value = newValue;
//             });
//             field.didChange(newValue);
//           },
//           items: <String>['Option 1', 'Option 2', 'Option 3']
//             .map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//         ),
//       ),
//     );
//   },
// )

               ) ],
              ),
            ),
          ),
        )),
    );
  }
}