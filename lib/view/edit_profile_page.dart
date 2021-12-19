import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_down_flutter/controller/edit_profile_controller.dart';
import 'package:up_down_flutter/utils/textfields_input.dart';

import '../globals.dart';

class EditProfilePage extends StatelessWidget {
  final EditProfileController controller = Get.put(EditProfileController());

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
          'Edit Profile',
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
            image: AssetImage("graphics/logins.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: _height * 0.2,
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 64, left: 16, right: 16, bottom: 16),
              height: _height * 0.8,
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
                    Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset('graphics/edit_profile.png',
                            height: 64, width: 64)),
                    SizedBox(
                      height: _height * .04,
                    ),
                    TextFieldInput(
                      hintText: 'First Name',
                      inputType: TextInputType.text,
                      textEditingController: controller.firstNameController,
                      titleTextStyle: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: editProfivePageTitleColor),
                    ),
                    TextFieldInput(
                      hintText: 'Last Name',
                      inputType: TextInputType.visiblePassword,
                      textEditingController: controller.firstNameController,
                      titleTextStyle: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: editProfivePageTitleColor),
                    ),
                    TextFieldInput(
                      hintText: 'Email',
                      inputType: TextInputType.visiblePassword,
                      textEditingController: controller.firstNameController,
                      titleTextStyle: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: editProfivePageTitleColor),
                    ),
                    TextFieldInput(
                      hintText: 'City',
                      inputType: TextInputType.visiblePassword,
                      textEditingController: controller.firstNameController,
                      titleTextStyle: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: editProfivePageTitleColor),
                    ),
                    TextFieldInput(
                      hintText: 'Country',
                      inputType: TextInputType.visiblePassword,
                      textEditingController: controller.firstNameController,
                      titleTextStyle: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: editProfivePageTitleColor),
                    ),
                    TextFieldInput(
                      hintText: 'Age',
                      inputType: TextInputType.visiblePassword,
                      textEditingController: controller.firstNameController,
                      titleTextStyle: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: editProfivePageTitleColor),
                    ),
                    GestureDetector(
                      child: Container(
                          width: double.maxFinite,
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
                              "Save",
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
          ],
        ),
      ),
    );
  }
}
