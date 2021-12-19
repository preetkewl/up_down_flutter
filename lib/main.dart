import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'routes.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Routes();
  });

}
