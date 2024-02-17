import 'package:coduapp/colors.dart';
import 'package:coduapp/login/raqamni_tartiblash.dart';
import 'package:coduapp/login/saveUser/saveUser.dart';
import 'package:coduapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var name = TextEditingController();
  var familya = TextEditingController();
  var phoneNumber = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Profil yaratish",
                style: GoogleFonts.poppins(
                  color: orangeColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: size.width,
              height: size.height * 0.68,
              decoration: BoxDecoration(
                  color: blackColor, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: whiteColor.withOpacity(0.3),
                              width: 2,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: whiteColor.withOpacity(0.3),
                              width: 3,
                            ),
                          ),
                          hintText: "Abdulatif",
                          labelText: "Ismingiz",
                          hintStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                          labelStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        cursorColor: whiteColor.withOpacity(0.3),
                        style: GoogleFonts.poppins(
                            color: whiteColor.withOpacity(0.5),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                        ],
                        keyboardType: TextInputType.name,
                        controller: name,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: whiteColor.withOpacity(0.3),
                              width: 2,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: whiteColor.withOpacity(0.3),
                              width: 3,
                            ),
                          ),
                          hintText: "Shokirov",
                          labelText: "Familyangiz",
                          hintStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                          labelStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        cursorColor: whiteColor.withOpacity(0.3),
                        style: GoogleFonts.poppins(
                            color: whiteColor.withOpacity(0.5),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                        ],
                        controller: familya,
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: whiteColor.withOpacity(0.3),
                              width: 2,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: whiteColor.withOpacity(0.3),
                              width: 3,
                            ),
                          ),
                          prefixText: "+998 ",
                          prefixStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                          hintText: "90 123 45 67",
                          labelText: "Telefon raqam",
                          hintStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                          labelStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        cursorColor: whiteColor.withOpacity(0.3),
                        style: GoogleFonts.poppins(
                            color: whiteColor.withOpacity(0.5),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                        controller: phoneNumber,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(12),
                          FilteringTextInputFormatter.digitsOnly,
                          PhoneNumber(),
                        ],
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: whiteColor.withOpacity(0.3),
                              width: 2,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: whiteColor.withOpacity(0.3),
                              width: 3,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              if (isPassword == true) {
                                eyeIcon = PhosphorIcons.eyeSlash();
                                isPassword = false;
                                setState(() {});
                              } else {
                                eyeIcon = PhosphorIcons.eye();
                                isPassword = true;
                                setState(() {});
                              }
                            },
                            icon: Icon(
                              eyeIcon,
                              color: whiteColor.withOpacity(0.5),
                            ),
                          ),
                          hintText: "********",
                          labelText: "Parol",
                          hintStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                          labelStyle: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        cursorColor: whiteColor.withOpacity(0.3),
                        style: GoogleFonts.poppins(
                            color: whiteColor.withOpacity(0.5),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                        ],
                        obscureText: isPassword,
                        controller: password,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Switch(
                            activeColor: orangeColor,
                            value: IsSwitch,
                            onChanged: (value) {
                              IsSwitch = value;
                              setState(() {});
                            },
                          ),
                          Text(
                            "Maxfiylik siyosati?",
                            style: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.5),
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                          color: orangeColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            if (name.text.isNotEmpty &&
                                familya.text.isNotEmpty &&
                                phoneNumber.text.length == 12 &&
                                password.text.length >= 8 &&
                                IsSwitch == true) {
                              saveUser();
                              Get.offAll(() => MyApp(),
                                  transition: Transition.circularReveal);
                            }
                          },
                          child: Center(
                            child: Text(
                              "Ro'yxatdan o'tish",
                              style: GoogleFonts.poppins(
                                color: blackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Profilingiz bormi? Tizimga kirish",
                        style: GoogleFonts.poppins(
                          color: whiteColor.withOpacity(0.5),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var IsSwitch = false;

  bool isPassword = true;
  IconData eyeIcon = PhosphorIcons.eye();

  Future saveUser() async {
    await SaveUser.saveName(name.text);
    await SaveUser.saveFamilya(familya.text);
    await SaveUser.saveNumber(phoneNumber.text);
    await SaveUser.savePassword(password.text);
    print("saqlandi");
  }
}
