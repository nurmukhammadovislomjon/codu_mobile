import 'package:coduapp/colors.dart';
import 'package:coduapp/login/raqamni_tartiblash.dart';
import 'package:coduapp/login/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPassword = true;
  IconData eyeIcon = PhosphorIcons.eye();
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
                "Assalomu\nalaykum",
                style: GoogleFonts.poppins(
                  color: orangeColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Tizimga kirish uchun davom eting",
                style: GoogleFonts.poppins(
                  color: whiteColor.withOpacity(0.4),
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: size.width,
              height: size.width * 1,
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
                            "Parolni unutdim?",
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
                        child: Center(
                          child: Text(
                            "Tizimga kirish",
                            style: GoogleFonts.poppins(
                              color: blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
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
                        Get.to(() => SignUpPage(),
                            transition: Transition.leftToRight);
                      },
                      child: Text(
                        "Profilingiz yo'qmi? Ro'yxatdan o'tish",
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
}