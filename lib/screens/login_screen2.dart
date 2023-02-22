import 'package:deltax/model/user_model.dart';
import 'package:deltax/provider/auth_provider.dart';
import 'package:deltax/provider/user_provider.dart';
import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/individual_screen.dart';
import 'package:deltax/screens/individual_screen2.dart';
import 'package:deltax/screens/reset_password_screen.dart';
import 'package:deltax/screens/welcome_page.dart';
import 'package:deltax/util/http_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
   bool _isHidden = true;
  bool isChecked = false;
final _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
     final authProvider = Provider.of<AuthProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SafeArea(
        //wrap the entire layout with SingleChildScrollView to remove bottom overflow
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children:  [
                   const SizedBox(height: 160),
                  const Text("LOGIN",
                  style: TextStyle(
                    color:  Color(0xff3498DB),
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Mulish"
                  ),),
                  const SizedBox(height: 20),
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
                                  text: 'Password',
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
                              hintText: 'password',
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
                      const SizedBox(height: 30),
                       Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 105),
                                    child: Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                        fontFamily: "Mulish",
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ResetPasswordScreen()));
                                        },
                                        child: const Text(
                                          "Reset",
                                          style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.blue),
                                        )),
                                  )
                ],
              ),
              const SizedBox(height: 50),
              Container(
             padding: const EdgeInsets.all(25),
                                child: authProvider.logginStatus == Status.loggingIn
                                    ? const CircularProgressIndicator()
                                    :
                 ElevatedButton(
                                  onPressed: () {
                                     if (_formKey.currentState!.validate()) {
                                          authProvider
                                              .login(email.text, password.text)
                                              .then((response) {
                                            if (response["status"] == 500) {
                                              HttpService().showMessage(
                                                  response["message"], context);
                                            } else {
                                              User user = User(
                                                 // email: response["data"].email,
                                                  user: response["data"].user,
                                                  token: response["data"].token);
                                                  
                                              userProvider.setUser(user);
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const IndividualHomeScreen()));
                                            }
                                          });
                                        }
                                    //  if (_formKey.currentState!.validate()) {
                                    //         authProvider
                                    //             .login(email.text, password.text)
                                    //             .then((response) {
                                    //           if (response["status"] == 500) {
                                    //              User user = User(
                                    //                 user: response["data"].user,
                                    //                 token: response["data"].token);
                                    //             userProvider.setUser(user);
                                    //             Navigator.pushReplacement(
                                    //                 context,
                                    //                 MaterialPageRoute(
                                    //                     builder: (context) =>
                                    //                         const IndividualHomeScreen()));
                                               
                                    //           } else {
                                    //              HttpService().showMessage(
                                    //                 response["message"], context);
                                    //           }
                                    //         });
                                    //       }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const  Color(0xff3498DB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                   
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 110,right: 110,top: 15,bottom: 15),
                                    child: Text("Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Mulish",
                                      fontSize: 22
                                    ),),
                                  ),
                                ),
              ),
                               const SizedBox(height: 40),
                                Center(
                                  child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 65),
                                    child: Text(
                                      "Don't have an Account?",
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
                                                    const WelcomeScreen()));
                                      },
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          fontSize: 19,
                                          color: Colors.blue),
                                      ))
                ],
              ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}