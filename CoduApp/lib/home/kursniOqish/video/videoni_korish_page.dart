import 'package:coduapp/colors.dart';
import 'package:coduapp/home/kursniOqish/coursesPrivider.dart';
import 'package:coduapp/home/kursniOqish/kursnioqish_page.dart';
import 'package:coduapp/home/kursniOqish/save_get_Courses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoniKorishPage extends StatefulWidget {
  const VideoniKorishPage(
      {super.key, required this.coursesindex, required this.index});
  final int coursesindex;
  final int index;

  @override
  State<VideoniKorishPage> createState() => _VideoniKorishPageState();
}

class _VideoniKorishPageState extends State<VideoniKorishPage> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    super.initState();
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: coursesVideoUrl[widget.coursesindex],
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        hideControls: false,
        showLiveFullscreenButton: true,
        hideThumbnail: false,
        controlsVisibleAtStart: true,
        useHybridComposition: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: (context, orientation) {
          final isPortation = orientation == Orientation.portrait;
          return isPortation ? isPortativ(context) : noProtativ(context);
        },
      );

  @override
  Widget isPortativ(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            coursesVideotitle[widget.coursesindex],
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: orangeRedColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => KursniOqishPage(index: 0)),
                  (route) => false);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: whiteColor,
              // size: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: YoutubePlayer(
                  controller: youtubePlayerController,
                  progressColors: ProgressBarColors(
                    playedColor: Colors.deepOrange,
                    backgroundColor: whiteColor,
                    bufferedColor: Colors.orange,
                    handleColor: whiteColor,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                "Anvar Narzulaev",
                style: GoogleFonts.aBeeZee(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  color: orangeRedColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {
                    saveCoursesIndex();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoniKorishPage(
                                  coursesindex: widget.coursesindex + 1,
                                  index: widget.index,
                                )));
                  },
                  child: Center(
                    child: Text(
                      "Keyingi dars",
                      style: GoogleFonts.aBeeZee(
                          color: whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget noProtativ(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.height,
                child: YoutubePlayer(
                  controller: youtubePlayerController,
                  progressColors: ProgressBarColors(
                    playedColor: Colors.deepOrange,
                    backgroundColor: whiteColor,
                    bufferedColor: Colors.orange,
                    handleColor: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future saveCoursesIndex() async {
    await CoursesPrefs.loadCoursesIndex(widget.coursesindex);
    print(widget.coursesindex);
  }
}
