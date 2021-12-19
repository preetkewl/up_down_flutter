import 'package:get/get.dart';
import 'package:up_down_flutter/model/login_response.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {

  var _loading = false.obs;
  var _loginResponse = LoginResponse().obs;

  get loading => _loading.value;

  set loading(value) {
    _loading.value = value;
  }

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/user.birthday.read',
      'https://www.googleapis.com/auth/user.addresses.read',
    ],
  );

  Future<void> handleSignIn() async {
    try {
      await _googleSignIn.signIn();

      print(_googleSignIn.currentUser!.displayName);
      print(_googleSignIn.currentUser!.email);
      print(_googleSignIn.currentUser!.photoUrl);
      print(_googleSignIn.currentUser!.id);

      await _googleSignIn.signOut();

    } catch (error) {
      print(error);
    }
  }




}