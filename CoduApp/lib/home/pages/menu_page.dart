import 'package:coduapp/colors.dart';
import 'package:coduapp/home/pages/profile/edit_profile_page.dart';
import 'package:coduapp/login/saveUser/saveUser.dart';
import 'package:coduapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  void initState() {
    super.initState();
    getUserFunc();
  }

  String? name;
  String? familya;
  String? phoneNumber;

  Future getUserFunc() async {
    name = await SaveUser.getName();
    familya = await SaveUser.getFamilya();
    phoneNumber = await SaveUser.getNumber();
    print(name);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.08,
        ),
        Center(
          child: Container(
            width: size.width * 0.2,
            height: size.width * 0.2,
            decoration: BoxDecoration(
              color: orangeColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Icon(
                PhosphorIconsFill.user,
                color: whiteColor,
                size: size.width * 0.15,
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          name.toString(),
          style: GoogleFonts.aBeeZee(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          familya.toString(),
          style: GoogleFonts.aBeeZee(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Divider(
            color: Colors.black.withOpacity(0.4),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          width: double.maxFinite,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(25),
          ),
          child: InkWell(
            onTap: () {
              Get.to(
                () => EditProfile(),
                transition: Transition.circularReveal,
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.edit,
                        color: orangeRedColor,
                        size: 35,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Text(
                    "Profilni tahrirlash",
                    style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          width: double.maxFinite,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Icon(
                      PhosphorIconsFill.globe,
                      color: orangeRedColor,
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Text(
                  "Web saytga o'tish",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          width: double.maxFinite,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(25),
          ),
          child: InkWell(
            onTap: () {
              SaveUser.logOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                  (route) => false);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.logout,
                        color: Colors.redAccent,
                        size: 35,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Text(
                    "Chiqish",
                    style: GoogleFonts.aBeeZee(
                      color: Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
