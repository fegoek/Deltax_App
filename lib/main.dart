
import 'package:deltax/provider/auth_provider.dart';
import 'package:deltax/provider/user_provider.dart';
import 'package:deltax/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';





void main() {
  runApp( 
    MultiProvider(
      providers: [
         ChangeNotifierProvider(
      create: (context) => AuthProvider(),
    ),
    ChangeNotifierProvider(create: (context) => UserProvider()),
    // ChangeNotifierProvider(create: (context) => BlogProvider()),
    //  ChangeNotifierProvider(create: (context) => NewsProvider())
    
      ],
      child: const MyApp()));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
   const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home:  const SplashScreen()
    );
  }
}
