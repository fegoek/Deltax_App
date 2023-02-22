import 'package:deltax/model/user_model.dart';
import 'package:deltax/provider/auth_provider.dart';
import 'package:deltax/provider/user_provider.dart';
import 'package:deltax/screens/individual_screen2.dart';
import 'package:deltax/screens/welcome_page.dart';
import 'package:deltax/util/http_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class IndividualScreen extends StatefulWidget {
  const IndividualScreen({super.key});

  @override
  State<IndividualScreen> createState() => _IndividualScreenState();
}

class _IndividualScreenState extends State<IndividualScreen> {

 

  bool _isHidden = true;
  bool isChecked = false;

     final _formKey = GlobalKey<FormState>();
  final TextEditingController surname = TextEditingController();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
 final TextEditingController stin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    
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
               child: Text("Individual Tax Payer Information",
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
                              text: 'Surname',
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
                      controller: surname,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "John",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Surname is required';
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
                              text: 'First Name',
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
                      controller: firstname,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15,bottom: 15,left: 5),
                        border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15)           
                        ),
                          hintText: "Doe",
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 245, 245),
                          //enabledBorder: InputBorder.none),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'First Name is required';
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
                      controller: confirmpassword,
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
                  const SizedBox(height: 50),
                   Container( padding: const EdgeInsets.all(25),
                            child: authProvider.registeredStatus ==
                                    Status.registering
                                ? const CircularProgressIndicator()
                                :
                      ElevatedButton(
                              onPressed: () {
                                 Navigator.push(
                                  context, 
                                CupertinoPageRoute(
                                  builder: (context) => const IndividualScreen2()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const  Color(0xff3498DB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                               
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 150,right: 150,top: 15,bottom: 15),
                                child: Text("Next",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Mulish",
                                  fontSize: 20
                                ),),
                              ),
                            ),
                   ),
                          const SizedBox(height: 40),
                            Center(
                              child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => const WelcomeScreen()));
                          
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

                ],
              ),
            ),
          ),
        )),
    );
  }
}