import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:login/repos/auth_repo/auth_repo.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  // Call this function from design & it will do the rest
  void loginUser(String email, String password) {
    AuthRepo.instance.loginWithEmailAndPassword(email, password);
  }
}
