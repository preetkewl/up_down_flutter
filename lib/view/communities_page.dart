import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:up_down_flutter/globals.dart';

class Communities extends StatelessWidget {
  var _height;
  final _currentPageNotifier = ValueNotifier<int>(0);

  final List<Widget> up = [
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'graphics/nat_1.jpeg',
        fit: BoxFit.fitHeight,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'graphics/nat_2.jpeg',
        fit: BoxFit.fitHeight,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset('graphics/back_arrow.png'),
          onTap: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Communities',
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("graphics/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: _height * 0.15,
            ),
            Container(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              height: _height * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(64),
                  topRight: Radius.circular(64),
                ),
              ),
              child: PageView(
                controller: PageController(
                  viewportFraction: 0.8,
                  initialPage: 0,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 64, bottom: 32, left: 8, right: 8),
                    child: PhysicalModel(
                      color: Colors.white,
                      elevation: 8,
                      shadowColor: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              child: CarouselSlider.builder(
                                  options: CarouselOptions(
                                      enableInfiniteScroll: false,
                                      viewportFraction: 1,
                                      reverse: false,
                                      autoPlay: false,
                                      aspectRatio: 1,
                                      initialPage: 0),
                                  itemCount: 2,
                                  itemBuilder: (BuildContext context,
                                      int itemIndex, int c) =>
                                      up.elementAt(itemIndex)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CirclePageIndicator(
                              itemCount: 3,
                              currentPageNotifier: _currentPageNotifier,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '@Communitie',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: communityPageText),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Description text here!!!'),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              child: Container(
                                  width: 140,
                                  height: 55,
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4.0),
                                    ),


                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage("graphics/btn.png"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Follow",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ) // button text

                              ),
                              onTap: () {
                                print("you clicked me");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 64, bottom: 32, left: 8, right: 8),
                    child: PhysicalModel(
                      color: Colors.white,
                      elevation: 8,
                      shadowColor: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              child: CarouselSlider.builder(
                                  options: CarouselOptions(
                                      enableInfiniteScroll: false,
                                      viewportFraction: 1,
                                      reverse: false,
                                      autoPlay: false,
                                      aspectRatio: 1,
                                      initialPage: 0),
                                  itemCount: 2,
                                  itemBuilder: (BuildContext context,
                                      int itemIndex, int c) =>
                                      up.elementAt(itemIndex)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CirclePageIndicator(
                              itemCount: 3,
                              currentPageNotifier: _currentPageNotifier,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '@Communitie',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: communityPageText),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Description text here!!!'),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              child: Container(
                                  width: 140,
                                  height: 55,
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4.0),
                                    ),


                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage("graphics/btn.png"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Follow",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ) // button text

                              ),
                              onTap: () {
                                print("you clicked me");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 64, bottom: 32, left: 8, right: 8),
                    child: PhysicalModel(
                      color: Colors.white,
                      elevation: 8,
                      shadowColor: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              child: CarouselSlider.builder(
                                  options: CarouselOptions(
                                      enableInfiniteScroll: false,
                                      viewportFraction: 1,
                                      reverse: false,
                                      autoPlay: false,
                                      aspectRatio: 1,
                                      initialPage: 0),
                                  itemCount: 2,
                                  itemBuilder: (BuildContext context,
                                      int itemIndex, int c) =>
                                      up.elementAt(itemIndex)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CirclePageIndicator(
                              itemCount: 3,
                              currentPageNotifier: _currentPageNotifier,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '@Communitie',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: communityPageText),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Description text here!!!'),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              child: Container(
                                  width: 140,
                                  height: 55,
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4.0),
                                    ),


                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage("graphics/btn.png"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Follow",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ) // button text

                              ),
                              onTap: () {
                                print("you clicked me");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Image.asset('graphics/multiple_users.png', height: 64, width: 64,),
    );
  }
}
