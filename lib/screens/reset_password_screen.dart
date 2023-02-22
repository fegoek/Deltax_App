
import 'package:deltax/screens/login_screen.dart';
import 'package:deltax/screens/new_password_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

   final TextEditingController Email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const LoginScreen())
          );
          
        }, icon: const Icon(Icons.arrow_back_ios) ),
        centerTitle: true,
        title: const Text("Reset Password",
        style: TextStyle(
          color:  Color(0xff3498DB),
          fontWeight: FontWeight.w600
        ),),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children:  [
              const SizedBox(height: 70),
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
                      controller: Email,
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
                        if (value == "" ) {
                          return 'Email is Required';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 50),
 ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                              CupertinoPageRoute(
                                builder: (context) => const NewPasswordScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const  Color(0xff3498DB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                             
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 100,right: 100,top: 15,bottom: 15),
                              child: Text("Reset Password",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Mulish",
                                fontSize: 22
                              ),),
                            ),
                          ),
            ],
          ),
        )),
    );
  }
}