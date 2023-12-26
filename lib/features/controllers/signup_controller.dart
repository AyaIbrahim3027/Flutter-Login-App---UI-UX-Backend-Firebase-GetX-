import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:login/repos/auth_repo/auth_repo.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();

  // Call this function from design & it will do the rest
  void registerUser(String email, String password) {
    String? error = AuthRepo.instance
        .createUserWithEmailAndPassword(email, password) as String;

    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }


//get phoneNo from user and pass it to auth repo for firebase auth
  void phoneAuthentication(String phoneNo){
    AuthRepo.instance.phoneAuthentication(phoneNo);
  }
}
