import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../globals.dart';

class MyResultsPage extends StatelessWidget {
  var _screenHeight, _padding, _height, _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _padding = MediaQuery.of(context).padding;
    _screenHeight = _height - _padding.top;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          'My Results',
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        actions: [Image.asset('graphics/sort.png', color: Colors.white,),],

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
              padding: EdgeInsets.only(top: 64, left: 16, right: 16, bottom: 16),
              height: _height * 0.85,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(64),
                  topRight: Radius.circular(64),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      padding: EdgeInsets.all(8),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 4),
                                blurRadius: 6,
                                spreadRadius: 0)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              "graphics/edit_profile.png",
                              width: 40,
                              height: 40,
                            ),
                          ),

                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Result 1',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              color: myResultPageTitle),
                                        ),
                                      ),
                                      Text(
                                        '1d',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: myResultPageDateTitle),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        color: myResultPageText),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '20K',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2M',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            color: teal),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                  Image.asset('graphics/vote.png')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Image.asset('graphics/result.png' ),
    );
  }
}
