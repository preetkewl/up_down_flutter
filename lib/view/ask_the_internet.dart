import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_down_flutter/globals.dart';
import 'package:up_down_flutter/utils/textfields_input.dart';

class AskTheInternet extends StatelessWidget {
  var _height;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    _height = MediaQuery.of(context).size.height;

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
        title: Text('Ask The Internet',
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
              padding:
                  EdgeInsets.only(top: 64, left: 16, right: 16, bottom: 16),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Ask The Internet',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            color: loginPageTitleColor),
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.04,
                    ),
                    Text(
                      'Upload Content for UP',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          color: askInternetPageTitleColor),
                    ),
                    SizedBox(
                      height: _height * 0.01,
                    ),
                    Image.asset('graphics/add.png'),
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset('graphics/divider.png')),
                    SizedBox(
                      height: _height * 0.04,
                    ),
                    Text(
                      'Upload Content for DOWN',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          color: askInternetPageTitleColor),
                    ),
                    SizedBox(
                      height: _height * 0.01,
                    ),
                    Image.asset('graphics/add.png'),
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset('graphics/divider.png')),
                    SizedBox(
                      height: _height * 0.06,
                    ),
                    TextFieldInput(
                      titleText: 'Text up to 140 characters',
                      hintText: 'Enter Question',
                      inputType: TextInputType.visiblePassword,
                      textEditingController: controller,
                      titleTextStyle: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: editProfivePageTitleColor),
                    ),
                    SizedBox(
                      height: _height * 0.04,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Ask The Community',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            color: loginPageTitleColor),
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.04,
                    ),
                    Text(
                      'Select The Community',
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      items: <String>['Dogs', 'Humans', 'Animals']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                    SizedBox(
                      height: _height * 0.04,
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
