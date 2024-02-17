import 'package:coduapp/colors.dart';
import 'package:coduapp/isFalse,.dart';
import 'package:coduapp/login/raqamni_tartiblash.dart';
import 'package:coduapp/login/saveUser/saveUser.dart';
import 'package:coduapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController name = TextEditingController();
  TextEditingController familya = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController oldPassword = TextEditingController();

  String? oldPasswordGet;

  @override
  void initState() {
    super.initState();
    oldUser();
  }

  bool oldPasswordType = true;
  bool newPasswordType = true;
  IconData oldPasswordIcon = Icons.remove_red_eye;
  IconData newPasswordIcon = Icons.remove_red_eye;
  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: (context, orientation) {
          final isPortativ = orientation == Orientation.portrait;
          return isPortativ ? isTrue(context) : isFalse(context);
        },
      );

  Widget isTrue(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profilni tahrirlash",
          style: GoogleFonts.aBeeZee(
            color: whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: orangeRedColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 3)),
                  hintText: "Abdulaziz",
                  hintStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: "Ismingiz",
                  labelStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                ],
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: familya,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 3)),
                  hintText: "Zokirov",
                  hintStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: "Familyangiz",
                  labelStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                ],
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: phoneNumber,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 3)),
                  hintText: "90 123 45 67",
                  hintStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixText: "+998 ",
                  prefixStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: "Telefon raqami",
                  labelStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(12),
                  FilteringTextInputFormatter.digitsOnly,
                  PhoneNumber(),
                ],
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: oldPassword,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 3)),
                  hintText: "********",
                  hintStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: "Eski Parol",
                  labelStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (oldPasswordType == true) {
                        setState(() {
                          oldPasswordType = false;
                          oldPasswordIcon = Icons.visibility_off_rounded;
                        });
                      } else {
                        setState(() {
                          oldPasswordType = true;
                          oldPasswordIcon = Icons.remove_red_eye;
                        });
                      }
                    },
                    icon: Icon(
                      oldPasswordIcon,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                ],
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                obscureText: oldPasswordType,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: newPassword,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: orangeRedColor, width: 3)),
                  hintText: "********",
                  hintStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: "Yangi Parol",
                  labelStyle: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (newPasswordType == true) {
                        setState(() {
                          newPasswordType = false;
                          newPasswordIcon = Icons.visibility_off_rounded;
                        });
                      } else {
                        setState(() {
                          newPasswordType = true;
                          newPasswordIcon = Icons.remove_red_eye;
                        });
                      }
                    },
                    icon: Icon(
                      newPasswordIcon,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                ],
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                obscureText: newPasswordType,
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  color: orangeRedColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () async {
                    if (oldPassword.text == aslPassword &&
                        (name.text != aslName ||
                            familya.text != aslFamilya ||
                            phoneNumber.text != aslNumber ||
                            newPassword.text != aslPassword)) {
                      await SaveUser.updateUser("name", name.text);
                      await SaveUser.updateUser("familya", familya.text);
                      await SaveUser.updateUser("number", phoneNumber.text);
                      await SaveUser.updateUser("password", newPassword.text);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                          (route) => false);
                    }
                  },
                  child: Center(
                    child: Text(
                      "Saqlash",
                      style: GoogleFonts.aBeeZee(
                        color: whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? aslName;
  String? aslFamilya;
  String? aslNumber;
  String? aslPassword;
  Future oldUser() async {
    name.text = await SaveUser.getName();
    familya.text = await SaveUser.getFamilya();
    aslName = await SaveUser.getName();
    aslFamilya = await SaveUser.getFamilya();
    await SaveUser.getNumber().then((value) {
      phoneNumber.text = value!;
      aslNumber = value;
    });
    oldPassword.text = await SaveUser.getPassword();
    aslPassword = await SaveUser.getPassword();
    newPassword.text = await SaveUser.getPassword();
    setState(() {});
  }
}
