import 'package:deltax/provider/user_provider.dart';
import 'package:deltax/widgets/organ_home_widget.dart';
import 'package:deltax/widgets/organ_profile_widget.dart';
import 'package:deltax/widgets/organ_taxcalculator_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrganisationHome extends StatefulWidget {
  const OrganisationHome({super.key});

  @override
  State<OrganisationHome> createState() => _OrganisationHomeState();
}

class _OrganisationHomeState extends State<OrganisationHome> {
 int _selectedIndex = 0;
  static final List _widgetOption = <Widget>[
    const OrganisationHomeWidget(),
    const OrganisationTaxCalculatorWidget(),
    const OrganisationProfileWidget()];


  @override
  Widget build(BuildContext context) {
     final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 227, 227),
        //appBar: AppBar(
         // backgroundColor: const Color.fromARGB(255, 6, 67, 95),
         //centerTitle: false,
          //title: _titleOption.elementAt(_selectedIndex),
        //),
        body: _widgetOption.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24)
            ),
            child: BottomNavigationBar(
              backgroundColor: const Color(0xffF7F7F7),
              selectedItemColor: Colors.lightBlueAccent,
              onTap: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              currentIndex: _selectedIndex,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  
                    icon: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Icon(Icons.home_outlined,),
                    ),label: ""),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Icon(Icons.calculate_outlined,),
                    ),label: ""),
                     BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Icon(Icons.person_outline,),
                    ),label: ""),
              ],
            ),
          ),
        ));
  }
}