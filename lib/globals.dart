import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kLive = false;
const String baseAddress = "https://uprdown.buzzerboy.com/";

// Colors
final Color primaryColor = Color(0xFFfc6134);
final Color canvasColor = Color(0xFFFFFFFF);
final Color shadow = Color(0x30000000);
final Color darkBlue = Color(0xFF294A6D);
final Color lightBlue = Color(0xFF1B7D87);
final Color red = Color(0xFFFB4E4F);
final Color teal = Color(0xFFB2B2B2);
final Color textTitleColor = Color(0xFF17335B);
final Color textValueColor = Color(0xFFAEAEAE);
final Color loginPageTitleColor = Color(0xFF222222);
final Color editProfivePageTitleColor = Color(0xFFD4D4D4);
final Color askInternetPageTitleColor = Color(0xFF17335B);
final Color loginFieldBoxColor = Color(0xFF9DC6CA);
final Color popUpMenuItemColor = Color(0xFF777777);
final Color myResultPageTitle = Color(0xFF187D87);
final Color myResultPageDateTitle = Color(0xFFA5A5A5);
final Color myResultPageText = Color(0xFF878787);
final Color communityPageText = Color(0xFF1B7D87);


final TextStyle buttonStyle = GoogleFonts.montserrat(
    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

// #294A6D  Dark Blue
// #1B7D87   Light Blue
// #FB4E4F    Red

final Color loginBackground = Color.fromARGB(35, 97, 121, 255);

// Design input fields
final double INPUT_FIELD_MAX_WIDTH = 400.0;
final double INPUT_FIELDS_SPACING = 10.0;

// Shared preferences
const kPrefsUserEmail = "user_email";
const kPrefsUserId = "user_id";

// Text size
final double TEXT_HEADING = 22.0;
final double TEXT_TITLE = 16.0;
