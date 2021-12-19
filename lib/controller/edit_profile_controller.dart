import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class EditProfileController extends GetxController {


  late TextEditingController firstNameController, lastNameController, emailController, cityController, countryController, ageController;


  @override
  void onInit() {
    super.onInit();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    cityController = TextEditingController();
    countryController = TextEditingController();
    ageController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    cityController.dispose();
    countryController.dispose();
    ageController.dispose();
  }
}