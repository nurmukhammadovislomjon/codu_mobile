import 'package:coduapp/colors.dart';
import 'package:coduapp/home/kursgaYozilish/openCourses.dart';
import 'package:coduapp/home/kursniOqish/kursnioqish_page.dart';
import 'package:coduapp/home/pages/homeElements/coursesList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class KurslarPage extends StatefulWidget {
  const KurslarPage({super.key});

  @override
  State<KurslarPage> createState() => _KurslarPageState();
}

class _KurslarPageState extends State<KurslarPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: saveTitle.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          width: double.maxFinite,
          height: size.height * 0.2,
          decoration: BoxDecoration(
            color: orangeColor.withOpacity(0.25),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 50,
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              Get.to(
                () => KursniOqishPage(index: index),
                transition: Transition.circularReveal,
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        saveTitle[index],
                        style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        saveAutherName[index],
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: size.height * 0.1,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                        color: orangeColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/devs/${saveImage[index]}.png",
                          width: size.height * 0.1,
                          height: size.height * 0.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
