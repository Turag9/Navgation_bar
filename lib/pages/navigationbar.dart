import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation_bar/pages/donateblood.dart';
import 'package:navigation_bar/pages/finddonor.dart';
import 'package:navigation_bar/pages/homepage.dart';
import 'package:navigation_bar/pages/profile.dart';
import 'package:navigation_bar/pages/update.dart';
class Navigationbarpage extends StatefulWidget {
  const Navigationbarpage({super.key});

  @override
  State<Navigationbarpage> createState() => _NavigationbarpageState();
}

class _NavigationbarpageState extends State<Navigationbarpage> {
  int curindx=0;
  List pages=const[
    Homepage(),
    Profile(),
    Donateblood(),
    Finddonor(),
    Update(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 30,
              offset: Offset(0, 20)
            )
          ]
        ),
        child: BottomNavigationBar(
            currentIndex: curindx,
            backgroundColor: Colors.white,
            selectedItemColor: Color(0xFF8B0000),
            unselectedItemColor: Colors.black,
            onTap: (indx){
              setState(() {
                curindx=indx;
              });
            },
            items:const[
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Donate"),
              BottomNavigationBarItem(icon: Icon(Icons.search),label: "Finddonor"),
              BottomNavigationBarItem(icon: Icon(Icons.update),label: "Update"),
            ]
        ),
      ),
    );
  }
}
