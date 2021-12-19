import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_down_flutter/view/edit_profile_page.dart';
import 'package:up_down_flutter/globals.dart';

import '../globals.dart';

class ProfilePage extends StatelessWidget {
  var _screenHeight, _padding, _height, _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _padding = MediaQuery.of(context).padding;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: Image.asset('graphics/edit.png'),
            onTap: () {
              Get.to(EditProfilePage());
            },
          ),
        ],
        leading: GestureDetector(
          child: Image.asset('graphics/back_arrow.png'),
          onTap: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('My Profile',
            style: GoogleFonts.montserrat(
                fontSize: 20,
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
              height: _height * 0.30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("graphics/girl.png"),
                    margin: EdgeInsets.only(
                        left: 16, right: 16, bottom: 16, top: _height * .1),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16, top: _height * .1),
                    child: Text(
                      'John Doe',
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: _height * 0.70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(64),
                  topRight: Radius.circular(64),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: _height * .1,
                    ),
                    Container(
                      height: 55,
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      padding: EdgeInsets.all(12),
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
                        children: [
                          Expanded(
                            child: Text(
                              'First Name',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: textTitleColor),
                            ),
                          ),
                          Text(
                            'John',
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: textValueColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 55,
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      padding: EdgeInsets.all(12),
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
                        children: [
                          Expanded(
                            child: Text(
                              'Last Name',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: textTitleColor),

                            ),
                          ),
                          Text(
                            'Doe',
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: textValueColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 55,
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      padding: EdgeInsets.all(12),
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
                        children: [
                          Expanded(
                            child: Text(
                              'Email',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: textTitleColor),

                            ),
                          ),
                          Text(
                            'Johndoe12@gmail.com',
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: textValueColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 55,
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      padding: EdgeInsets.all(12),
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
                        children: [
                          Expanded(
                            child: Text(
                              'City',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: textTitleColor),

                            ),
                          ),
                          Text(
                            'Lorem',
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: textValueColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 55,
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      padding: EdgeInsets.all(12),
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
                        children: [
                          Expanded(
                            child: Text(
                              'Country',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: textTitleColor),

                            ),
                          ),
                          Text(
                            'US',
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: textValueColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 55,
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      padding: EdgeInsets.all(12),
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
                        children: [
                          Expanded(
                            child: Text(
                              'Age',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: textTitleColor),

                            ),
                          ),
                          Text(
                            '26 Years',
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: textValueColor),

                          )
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
    );
  }
}
