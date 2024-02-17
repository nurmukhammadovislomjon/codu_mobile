import 'dart:async';

import 'package:coduapp/colors.dart';
import 'package:coduapp/home/pages/home_page.dart';
import 'package:coduapp/home/pages/kurslarim_page.dart';
import 'package:coduapp/home/pages/menu_page.dart';
import 'package:coduapp/isFalse,.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color item1 = Colors.blueAccent;
  Color item2 = Colors.black.withOpacity(0.5);
  Color item3 = Colors.black.withOpacity(0.5);
  int currentIndex = 0;

  Future<void> onRefreshFuckt() async {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: (context, orientation) {
          final isPortativ = orientation == Orientation.portrait;
          return isPortativ ? isTrue(context) : isFalse(context);
        },
      );
  Widget isTrue(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: onRefreshFuckt,
        color: orangeRedColor,
        edgeOffset: 20,
        child: ListView(
          children: [
            SingleChildScrollView(
              child: [
                HomePage_Pages(),
                KurslarPage(),
                MenuPage(),
              ][currentIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.maxFinite,
        height: 80,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                item1 = selectedItemColor;
                item2 = unselectedItemColor;
                item3 = unselectedItemColor;
                currentIndex = 0;
                setState(() {});
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    PhosphorIconsFill.house,
                    color: item1,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Asosiy",
                    style: GoogleFonts.poppins(color: item1),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                item2 = selectedItemColor;
                item1 = unselectedItemColor;
                item3 = unselectedItemColor;
                currentIndex = 1;
                setState(() {});
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    PhosphorIconsFill.compass,
                    color: item2,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Kurslarim",
                    style: GoogleFonts.poppins(color: item2),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                item2 = unselectedItemColor;
                item1 = unselectedItemColor;
                item3 = selectedItemColor;
                currentIndex = 2;
                setState(() {});
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    PhosphorIconsFill.user,
                    color: item3,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Profil",
                    style: GoogleFonts.poppins(color: item3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
