// ignore_for_file: prefer_const_constructors



import 'package:deltax/preference/user_preference.dart';
import 'package:deltax/provider/user_provider.dart';
import 'package:deltax/screens/homescreen.dart';
import 'package:deltax/screens/login_screen.dart';
import 'package:deltax/screens/payment_screen.dart';
import 'package:deltax/screens/search_screen.dart';
import 'package:deltax/screens/self_service_screen.dart';
import 'package:deltax/screens/tax_record_screen.dart';
import 'package:deltax/util/sizeConfig.dart';
import 'package:deltax/util/web_utility.dart';
import 'package:deltax/widgets/profile_widget.dart';
import 'package:deltax/widgets/taxcalculator_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../util/constant.dart';

class IndividualHomeWidget extends StatefulWidget {
  const IndividualHomeWidget({super.key});

  @override
  State<IndividualHomeWidget> createState() => _IndividualHomeWidgetState();
}

class _IndividualHomeWidgetState extends State<IndividualHomeWidget> {
 final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
     SizeConfig().init(context);
     double width = SizeConfig.screenW!;
     double height = SizeConfig.screenH!;

    return Scaffold(
       backgroundColor: const Color.fromARGB(95, 255, 255, 255),
      appBar: AppBar(
       // iconTheme: IconThemeData(color: Colors.white),
        leading: Builder(builder: (context) {
          return IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: const Icon(Icons.menu, color: Colors.white,),);
        },),
        toolbarHeight: 70,
      backgroundColor: const Color(0xff3498DB),
      title:  Text("Welcome,\n${userProvider.changeName}",
      style: TextStyle(
        color: Colors.white,
        fontSize: 17,
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
      drawer:  ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        child: Drawer(
          // ignore: sort_child_properties_last
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              DrawerHeader(child: Text("Welcome,\n ${userProvider.changeName}",
              style: TextStyle(
                color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w700
              ),)),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: ((context) => IndividualHomeScreen())));
                  },
                  child: Text("Home",
                  style: TextStyle(
                  color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w700
                              ),
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: ((context) => SelfServiceScreen())));
                  },
                  child: Text("Self Service",
                  style: TextStyle(
                  color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w700
                              ),
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: ((context) => TaxCalculatorWidget())));
                  },
                  child: Text("Tax Calculator",
                  style: TextStyle(
                  color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w700
                              ),
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: ((context) => ProfileWidget())));
                  },
                  child: Text("Profile",
                  style: TextStyle(
                  color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w700
                              ),
                  ),
                ),
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () =>  openURL(StaticUtils.help),
                  child: Text("Help & Support",
                  style: TextStyle(
                  color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w700
                              ),
                  ),
                ),
              ),

              SizedBox(height: 80,),
              
              ListTile(
                title: GestureDetector(
                  onTap: () {
                     UserPreference().removeUser();
                      Navigator.pushReplacement(context,
                       MaterialPageRoute(builder:
                        ((context) => const LoginScreen())));
                   // Navigator.push(context, CupertinoPageRoute(builder:
                   // ((context) => LoginScreen())));
                  },
                  child: Text("Logout",
                  style: TextStyle(
                  color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w700
                              ),
                  ),
                ),
              ),
            ],
          ),
          width: 270,
          backgroundColor: Color(0xffC7920B),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Stack(
              children:[ Container(
                height: 110,width: double.infinity,
              decoration: const BoxDecoration(
                boxShadow: [BoxShadow
                (spreadRadius: 2,blurRadius: 2,
              color: Color.fromARGB(85, 0, 0, 0))],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
                color:Color(0xff3498DB)),),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
              child: TextField(
                
                decoration: InputDecoration(prefixIcon: const Icon(Icons.search_outlined),
                  hintText: 'Search anything here',
                  contentPadding: const EdgeInsets.only(top: 15),
                  fillColor: Colors.white,
                  filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(35)
                )
                )
                ),
            )
              ]),
              Row(children: [
                Padding(
                padding: const EdgeInsets.only(left: 45.0, top: 80),
                child: Stack(
                  children:[ MediaQuery(
                     data: MediaQuery.of(context),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
 CupertinoPageRoute(builder:
  (context) => TaxRecordScreen())
 );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 200,
                        // width: 160,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: const Color(0xffC7920B)),
                          ),
                    ),
                  ), Padding(
                        padding: EdgeInsets.only(top: 25,left: 15,),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
 CupertinoPageRoute(builder:
  (context) => TaxRecordScreen())
 );
                          },
                          child: Text('TAX RECORD',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60, right: 20,left: 20),
                        child: GestureDetector(
                          onTap: () {
Navigator.push(context,
 CupertinoPageRoute(builder:
  (context) => TaxRecordScreen())
 );
                          },
                          child: Image.asset('assets/images/f.png')),
                      )
              ],),
                    ),
                    Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 80),
                child: Stack(
                  children:[ MediaQuery(
                    data: MediaQuery.of(context),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => SelfServiceScreen(),)
                            );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 200,
                        // width: 160,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: const Color(0xff229FE6)),
                          ),
                    ),
                  ), Padding(
                        padding: EdgeInsets.only(top: 25,left: 15,),
                        child: GestureDetector(
                          onTap: () {
                             Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => SelfServiceScreen(),)
                            );
                          },
                          child: Text(' SELF SERVICE',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60, right: 20,left: 20),
                        child: GestureDetector(   
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => SelfServiceScreen(),)
                            );
                          },
                          child: Image.asset('assets/images/a.png')),
                      )]
                ),
                    ),
              ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 30,right: 30),
                child: Stack(
                  children:[ MediaQuery(
                    data: MediaQuery.of(context),
                    child: GestureDetector(
                      onTap: (){
                         Navigator.push(context,
                             CupertinoPageRoute(builder:
                              (context) => PaymentScreen())
                             );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        // height: sizeConfig.blockV! * 5.1,
                        height: 190,
                        // width: 350,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: const Color(0xff40B143)),
                          ),
                    ),
                  ),
                       Padding(
                        padding: EdgeInsets.only(top: 80,left: 20),
                        child: GestureDetector(
                          onTap: () {
                             Navigator.push(context,
                             CupertinoPageRoute(builder:
                              (context) => PaymentScreen())
                             );
                          },
                          child: Text('PAY TAX',
                          style: TextStyle(
                            fontWeight: 
                          FontWeight.bold,
                          color: Colors.white),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140,top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                             CupertinoPageRoute(builder:
                              (context) => PaymentScreen())
                             );
                          },
                          child: Image.asset('assets/images/p.png')),
                      )]
                ),
                    ),],
              ),
          ),
        ),
      ),
      );
  }
}