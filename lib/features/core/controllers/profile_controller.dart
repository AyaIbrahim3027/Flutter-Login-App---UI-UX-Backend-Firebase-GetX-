import 'package:get/get.dart';
import 'package:login/features/authentication/models/user_model.dart';
import 'package:login/repos/auth_repo/auth_repo.dart';
import 'package:login/repos/user_repo/user_repo.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final authRepo = Get.put(AuthRepo());
  final userRepo = Get.put(UserRepo());

  // get user email and password to userRepo to fetch user record
  getUserData() {
    final email = authRepo.firebaseUser.value?.email;
    if (email != null) {
      return userRepo.getUserDetails(email);
    } else {
      Get.snackbar('Error', 'Login to continue');
    }
  }

    Future<List<UserModel>> getAllUsers()async{
      return await userRepo.allUsers();
    }

}
