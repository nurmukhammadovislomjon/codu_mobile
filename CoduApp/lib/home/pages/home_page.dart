import 'package:coduapp/colors.dart';
import 'package:coduapp/home/kursgaYozilish/openCourses.dart';
import 'package:coduapp/home/pages/homeElements/coursesList.dart';
import 'package:coduapp/login/saveUser/saveUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage_Pages extends StatefulWidget {
  const HomePage_Pages({super.key});

  @override
  State<HomePage_Pages> createState() => _HomePage_PagesState();
}

class _HomePage_PagesState extends State<HomePage_Pages> {
  String? name;
  @override
  void initState() {
    super.initState();
    getName();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * 0.07,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Salom, ${name}",
                    style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Bugun nima o'rganasiz?",
                    style: GoogleFonts.aBeeZee(
                      color: blackColor.withOpacity(0.6),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  color: blackColor,
                  size: 30,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset("assets/image/home.png"),
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Barcha kurslar",
            style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 22),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: autherName.length,
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
                    () => OpenCoursesPage(index: index),
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
                            title[index],
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
                            autherName[index],
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
                              "assets/devs/${image[index]}.png",
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
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Future getName() async {
    String? uzname = await SaveUser.getName();
    // String? uzname = "Nurmukha";
    if (uzname.toString().length >= 10) {
      setState(() {
        name = "\n${uzname}";
      });
    } else {
      setState(() {
        name = uzname;
      });
    }

    setState(() {});
  }
}
