import 'package:coduapp/colors.dart';
import 'package:coduapp/home/pages/homeElements/coursesList.dart';
import 'package:coduapp/isFalse,.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OpenCoursesPage extends StatefulWidget {
  const OpenCoursesPage({super.key, required this.index});
  final int index;

  @override
  State<OpenCoursesPage> createState() => _OpenCoursesPageState();
}

class _OpenCoursesPageState extends State<OpenCoursesPage> {
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
          title[widget.index],
          style: GoogleFonts.aBeeZee(
            color: whiteColor,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: orangeRedColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: orangeRedColor,
              height: size.height * .30,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title[widget.index],
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          autherName[widget.index],
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              PhosphorIconsFill.playCircle,
                              color: whiteColor,
                              size: 25,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "22",
                              style: GoogleFonts.aBeeZee(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: size.width * 0.5,
                          height: 50,
                          decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 30,
                                blurStyle: BlurStyle.normal,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Kursga qo'shilish",
                              style: GoogleFonts.aBeeZee(
                                  color: whiteColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ClipOval(
                      child: Image.asset(
                        "assets/devs/${image[widget.index]}.png",
                        width: size.width * 0.3,
                        height: size.width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Center(
              child: Text(
                "Kurs haqida",
                style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10,
              ),
              child: Text(
                kurshaqida[widget.index],
                style: GoogleFonts.aBeeZee(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
