import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:login/features/authentication/models/user_model.dart';
import 'package:login/repos/auth_repo/auth_repo.dart';
import 'package:login/repos/user_repo/user_repo.dart';

import '../screens/forget_password/forget_password_otp/otp_screen.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();
  final userRepo = Get.put(UserRepo());

  // Call this function from design & it will do the rest
  void registerUser(String email, String password) {
    String? error = AuthRepo.instance
        .createUserWithEmailAndPassword(email, password) as String;

    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }


//get phoneNo from user and pass it to auth repo for firebase auth
  Future<void> createUser(UserModel user) async {
   await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
   Get.to(() => const OTPScreen());
  }

  void phoneAuthentication(String phoneNo){
    AuthRepo.instance.phoneAuthentication(phoneNo);
  }
}
