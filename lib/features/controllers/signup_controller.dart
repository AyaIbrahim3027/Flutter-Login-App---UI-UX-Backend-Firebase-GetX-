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
    AuthRepo.instance.createUserWithEmailAndPassword(email, password);
  }
}
