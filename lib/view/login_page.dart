import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_down_flutter/controller/login_controller.dart';
import 'package:up_down_flutter/utils/loading_indicator_page.dart';
import '../globals.dart';

class LoginPage extends StatelessWidget {
  var _height, _width;
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Obx(
        () => LoadingIndicatorPage(
          loading: controller.loading,
          child: Container(
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
                  height: _height * 0.4,
                  child: Image.asset('graphics/logo.png'),
                ),
                Container(
                  height: _height * 0.6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(64),
                      topRight: Radius.circular(64),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: _height * .05,
                      ),
                      Text(
                        'Signin',
                        style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: loginPageTitleColor),
                      ),
                      SizedBox(
                        height: _height * .05,
                      ),
                      GestureDetector(
                        onTap: () => controller.handleSignIn(),
                        child: Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          height: _height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            border: Border.all(
                              color: loginFieldBoxColor,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('graphics/google.png'),
                              SizedBox(
                                width: _width * .01,
                              ),
                              Text(
                                "Sign in with Google",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: loginPageTitleColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * .02,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        height: _height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: Border.all(
                            color: loginFieldBoxColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('graphics/fb.png'),
                            SizedBox(
                              width: _width * .01,
                            ),
                            Text(
                              "Sign in with Facebook",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: loginPageTitleColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _height * .02,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        height: _height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: Border.all(
                            color: loginFieldBoxColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('graphics/instagram.png'),
                            SizedBox(
                              width: _width * .01,
                            ),
                            Text(
                              "Sign in with Instagram",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: loginPageTitleColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.03,
                      ),
                      Text(
                        "By continuing you agree to our",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: teal,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Terms & Conditions ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: teal,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            "and",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: teal,
                            ),
                          ),
                          Text(
                            " Privacy policies",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: teal,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
