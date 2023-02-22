import 'package:deltax/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {

   final _formKey = GlobalKey<FormState>();
  final TextEditingController surname = TextEditingController();
   final TextEditingController firstname = TextEditingController();
  final TextEditingController stin = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
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
             MaterialPageRoute(builder: (context) => const SettingsScreen()));
          }, icon: const Icon(Icons.arrow_back, color: Colors.white,),);
        },),
        toolbarHeight: 70,
      backgroundColor: const Color(0xff3498DB),
      centerTitle: true,
      title: const Text("Account Settings",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),),
      //   actions: [
      //    Padding(
      //  padding: const EdgeInsets.only(right: 20,top: 15,bottom: 15),
      // child: Container(height: 10,
      // width: 40,
      // decoration: BoxDecoration(//color: Colors.red,
      // boxShadow: const [
      //   BoxShadow(
      //     blurStyle: BlurStyle.outer,
      // spreadRadius: 1,
      // offset: Offset(0.75, 2.0),
      //   blurRadius: 5)],
      // borderRadius: BorderRadius.circular(200)
      // ),
      // child: const Icon(
      // Icons.notifications_outlined,color: Colors.white,),
      // ),)
      //   ],),
    ),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
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
                   const SizedBox(height: 8),
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
                          return 'firstname is required';
                        }
                        return null;
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
                              text: 'STIN',
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
                  const SizedBox(height: 8),
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
                      keyboardType: TextInputType.phone ,
                      controller: phone,
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
                  const SizedBox(height: 8),
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
                  const SizedBox(height: 70),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Change Password",
                                               style: TextStyle(
                                  color: Color(0xff3498DB),
                                  fontSize: 20,
                                  fontFamily: "Mulish"
                                 ),),
                    ),
                  ),
                  const SizedBox(height: 10),
                   const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Add Phone Number",
                                               style: TextStyle(
                                  color: Color(0xff3498DB),
                                  fontSize: 20,
                                  fontFamily: "Mulish"
                                 ),),
                    ),
                  ),
                  const SizedBox(height: 10),
                   const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Change Profile Picture",
                                               style: TextStyle(
                                  color: Color(0xff3498DB),
                                  fontSize: 20,
                                  fontFamily: "Mulish"
                                 ),),
                    ),
                  ),
                  const SizedBox(height: 100),
              ],
            )
          ),
        ),
      )),
    );
  }
}