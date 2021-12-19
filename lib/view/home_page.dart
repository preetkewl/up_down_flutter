import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:up_down_flutter/globals.dart';
import 'package:up_down_flutter/utils/textfields_input.dart';
import 'package:up_down_flutter/utils/tool_tip_shape.dart';
import 'package:up_down_flutter/view/ask_the_internet.dart';
import 'package:up_down_flutter/view/communities_page.dart';
import 'package:up_down_flutter/view/my_results_page.dart';
import 'package:up_down_flutter/view/profile_page.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var _height;

  static TextEditingController controller = TextEditingController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  final List<Widget> up = [
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'graphics/dil_1.jpeg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'graphics/dil_2.jpeg',
        fit: BoxFit.fill,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'graphics/dil_3.jpeg',
        fit: BoxFit.fill,
      ),
    )
  ];

  final List<Widget> down = [
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'graphics/gipy_1.jpeg',
        fit: BoxFit.fill,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'graphics/gipy_3.jpeg',
        fit: BoxFit.fill,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        'graphics/gipy_4.jpeg',
        fit: BoxFit.fill,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('graphics/top_logo.png'),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            shape: TooltipShape(),
            icon: Image.asset('graphics/menu.png'),

            onSelected: (selected) {
              switch (selected) {
                case 1:
                  {
                    Get.to(ProfilePage());
                  }
                  break;

                case 2:
                  {
                    Get.to(Communities());
                  }
                  break;
                case 3:
                  {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => errorDialog);
                  }
                  break;
                case 4:
                  {
                    Get.to(MyResultsPage());
                  }
                  break;
                case 5:
                  {
                    Get.to(AskTheInternet());
                  }
                  break;
                case 6:
                  {
                    //statements;
                  }
                  break;
                default:
                  {
                    //statements;
                  }
                  break;
              }
            },

            //onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem(
                height: 30,
                child: Text("My Profile"),
                value: 1,
                textStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: loginPageTitleColor),
              ),
              PopupMenuItem(
                height: 30,
                child: Text("Join a Community"),
                value: 2,
                textStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: loginPageTitleColor),
              ),
              PopupMenuItem(
                height: 30,
                child: Text("Create your Community"),
                value: 3,
                textStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: loginPageTitleColor),
              ),
              PopupMenuItem(
                height: 30,
                child: Text("My Results"),
                value: 4,
                textStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: loginPageTitleColor),
              ),
              PopupMenuItem(
                height: 30,
                child: Text("Ask the Internet"),
                value: 5,
                textStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: loginPageTitleColor),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                height: 30,
                child: Text("Logout"),
                value: 6,
                textStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: loginPageTitleColor),
              ),
            ],
          ),
        ],
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
                                      initialPage: 0),
                                  itemCount: 3,
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
                              selectedDotColor: communityPageText,
                              dotColor: editProfivePageTitleColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CarouselSlider.builder(
                              options: CarouselOptions(
                                  enableInfiniteScroll: false,
                                  viewportFraction: 1,
                                  reverse: false,
                                  autoPlay: false,
                                  initialPage: 0),
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int itemIndex,
                                      int c) =>
                                  down.elementAt(itemIndex),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CirclePageIndicator(
                              itemCount: 3,
                              currentPageNotifier: _currentPageNotifier,
                              selectedDotColor: communityPageText,
                              dotColor: editProfivePageTitleColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'is diljit better thah gippy?',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: loginPageTitleColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('graphics/up.png'),
                                Image.asset('graphics/down.png')
                              ],
                            )
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
    );
  }

  Dialog errorDialog = Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    //this right here
    child: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Join a commmunity',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Upload Image',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(
              height: 02,
            ),
            Image.asset('graphics/add.png'),
            SizedBox(
              height: 20,
            ),
            TextFieldInput(
              hintText: 'Name',
              titleText: '@title',
              inputType: TextInputType.text,
              textEditingController: controller,
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldInput(
              hintText: 'Description',
              titleText: 'Text upto 140 characters',
              inputType: TextInputType.text,
              textEditingController: controller,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                child: Container(
                    width: double.maxFinite,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("graphics/bg.png"),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                        child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )) // button text

                    ),
                onTap: () {
                  print("you clicked me");
                }),
          ],
        ),
      ),
    ),
  );
}

class CustomDialog extends StatelessWidget {
  static TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0.0, right: 0.0),
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Join a commmunity',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Upload Image',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 02,
                  ),
                  Image.asset('graphics/add.png'),
                  SizedBox(
                    height: 20,
                  ),
                  TextFieldInput(
                    hintText: 'Name',
                    titleText: '@title',
                    inputType: TextInputType.text,
                    textEditingController: controller,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldInput(
                    hintText: 'Description',
                    titleText: 'Text upto 140 characters',
                    inputType: TextInputType.text,
                    textEditingController: controller,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      child: Container(
                          width: double.maxFinite,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                                image: AssetImage("graphics/bg.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Center(
                              child: Text(
                            "Add",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          )) // button text

                          ),
                      onTap: () {
                        print("you clicked me");
                      }),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.close, color: lightBlue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
