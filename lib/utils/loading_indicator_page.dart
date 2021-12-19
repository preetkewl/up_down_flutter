import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingIndicatorPage extends StatelessWidget {
  LoadingIndicatorPage({Key? key, required this.loading, required this.child})
      : super(key: key);

  final bool loading;
  final Widget child;

  @override
  build(BuildContext context) {
    return Stack(
      children: <Widget>[
        this.child,
        loading == true
            ? Stack(
                children: [
                  Opacity(
                    opacity: 0.3,
                    child: const ModalBarrier(
                        dismissible: false, color: Colors.white),
                  ),
                  Center(
                    child: Platform.isIOS
                        ? CupertinoActivityIndicator(
                            animating: true,
                            radius: 5,
                          )
                        : CircularProgressIndicator(
                            value: null,
                            strokeWidth: 5.0,
                          ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
