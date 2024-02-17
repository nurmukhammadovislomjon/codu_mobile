import 'package:coduapp/colors.dart';
import 'package:coduapp/home/home.dart';
import 'package:coduapp/home/kursniOqish/save_get_Courses.dart';
import 'package:coduapp/home/kursniOqish/video/videoni_korish_page.dart';
import 'package:coduapp/home/pages/homeElements/coursesList.dart';
import 'package:coduapp/isFalse,.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class KursniOqishPage extends StatefulWidget {
  const KursniOqishPage({super.key, required this.index});
  final int index;

  @override
  State<KursniOqishPage> createState() => _KursniOqishPageState();
}

class _KursniOqishPageState extends State<KursniOqishPage> {
  int? coursesindex;

  @override
  void initState() {
    super.initState();
    getCoursesIndexInit();
  }

  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: (context, orientation) {
          final isPortativ = orientation == Orientation.portrait;
          return isPortativ ? isTrue(context) : isFalse(context);
        },
      );

  Widget isTrue(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title[widget.index],
            style: GoogleFonts.aBeeZee(
              color: whiteColor,
              fontSize: 22,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (route) => false);
            },
            icon: Icon(
              Icons.arrow_back,
              color: whiteColor,
              // size: 30,
            ),
          ),
          backgroundColor: orangeRedColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            saveTitle[widget.index],
                            style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            saveAutherName[widget.index],
                            style: GoogleFonts.aBeeZee(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
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
                              const SizedBox(
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
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: size.width * 0.5,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.red,
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
                                "Kursga tark etish",
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
                          "assets/devs/${saveImage[widget.index]}.png",
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
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Modullar",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              ListView.builder(
                itemCount: coursesModuleSoni.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    width: double.maxFinite,
                    height: size.height * 0.13,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coursesModuleTitle[index],
                            style: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                PhosphorIconsBold.play,
                                color: Colors.black.withOpacity(0.7),
                                size: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                coursesModuleSoni[index],
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black.withOpacity(0.7)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                PhosphorIconsBold.clock,
                                color: Colors.black.withOpacity(0.7),
                                size: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                coursesModuleTime[index],
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black.withOpacity(0.7)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  color: orangeRedColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Get.to(
                        () => VideoniKorishPage(
                              coursesindex: coursesindex!,
                              index: widget.index,
                            ),
                        transition: Transition.circularReveal);
                  },
                  child: Center(
                    child: Text(
                      coursesindex == 0
                          ? "O'qishni boshlash"
                          : "O'qishni davom etish",
                      style: GoogleFonts.aBeeZee(
                        color: whiteColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future getCoursesIndexInit() async {
    int? index = await CoursesPrefs.getCoursesIndex();
    if (index == null) {
      coursesindex = 0;
    } else {
      coursesindex = index;
    }
    print(index);
    setState(() {});
  }
}
