import 'package:flutter/material.dart';
import '../globals.dart';

class TextFieldInputPopup extends StatelessWidget {
  TextFieldInputPopup(
      {Key? key,
      required this.inputType,
      required this.textEditingController,
      this.hintText: "",
      this.obscureText: false})
      : super(key: key);

  final TextInputType inputType;
  final String hintText;
  final bool obscureText;
  final TextEditingController textEditingController;

  @override
  build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          TextField(
            controller: this.textEditingController,
            decoration: InputDecoration(
              hintText: this.hintText,
              hintStyle: TextStyle(color: Colors.black38),
            ),
            keyboardType: this.inputType,
            obscureText: this.obscureText,
            style: TextStyle(color: Colors.black12),
          ),
        ],
      ),
    );
  }
}

class TextFieldInput extends StatelessWidget {
  static const double topPadding = 15.0;
  static const double bottomPadding = 15.0;
  static const double leftPadding = 15.0;
  static const double rightPadding = 15.0;
  static const double cornerRadius = 5;

  TextFieldInput(
      {Key? key,
      required this.inputType,
      required this.textEditingController,
      this.hintText: "",
      this.titleText: "",
      this.obscureText: false,
      this.prefixImage,
      this.suffixImage,
      this.hintFontSize,
      this.titleTextStyle,
      this.prefixImageFunction,
      this.suffixImageFunction})
      : super(key: key);

  final TextInputType inputType;
  final String hintText;
  final String titleText;
  final bool obscureText;
  TextStyle? titleTextStyle;
  double? hintFontSize;
  Image? prefixImage;
  Image? suffixImage;
  Function? prefixImageFunction;
  Function? suffixImageFunction;
  final TextEditingController textEditingController;

  @override
  build(BuildContext context) {
    // Text left and right padding
    double textLeftPadding = prefixImage == null ? leftPadding : 0.0;
    double textRightPadding = suffixImage == null ? rightPadding : 0.0;

    GestureDetector? prefixGestureDetector;
    if (prefixImage != null) {
      prefixGestureDetector = GestureDetector(
        child: prefixImage,
        onTap: () {
          prefixImageFunction!();
        },
      );
    }

    GestureDetector? suffixGestureDetector;
    if (suffixImage != null) {
      suffixGestureDetector = GestureDetector(
        child: suffixImage,
        onTap: () {
          suffixImageFunction!();
        },
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.hintText,
          textAlign: TextAlign.left,
          style: titleTextStyle,
        ),
        TextField(
          controller: this.textEditingController,
          decoration: InputDecoration(
            hintText: titleText,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.cyan),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.cyan),
            ),
            contentPadding: EdgeInsets.only(
                left: textLeftPadding,
                right: textRightPadding,
                top: topPadding,
                bottom: bottomPadding),
            border: InputBorder.none,
            prefixIcon: prefixGestureDetector,
            suffixIcon: suffixGestureDetector,
            hintStyle: TextStyle(color: Colors.black12, fontSize: hintFontSize),
          ),
          style: TextStyle(color: textValueColor),
          keyboardType: this.inputType,
          obscureText: this.obscureText,
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}
