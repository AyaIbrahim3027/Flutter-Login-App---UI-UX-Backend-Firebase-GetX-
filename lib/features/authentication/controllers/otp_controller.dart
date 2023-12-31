
import 'package:get/get.dart';
import 'package:login/repos/auth_repo/auth_repo.dart';

import '../../core/screens/dashboard/dashboard.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthRepo.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const DashBoard()) : Get.back();
  }
}