import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login/core/screens/dashboard/dashboard.dart';
import 'package:login/features/screens/welcome/welcome_screen.dart';
import 'package:login/repos/auth_repo/exceptions/login_email_password_failure.dart';
import 'package:login/repos/auth_repo/exceptions/signup_email_password_failure.dart';

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();

  // variable
  final auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(Duration(seconds: 6));
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, setInitialScreen);
    // super.onReady();
  }

  setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const DashBoard());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      firebaseUser.value != null
          ? Get.offAll(() => const DashBoard())
          : Get.to(() => const WelcomeScreen());

    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('Firebase Auth Exception - ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print('Exception - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      firebaseUser.value != null
          ? Get.offAll(() => const DashBoard())
          : Get.to(() => const WelcomeScreen());

    } on FirebaseAuthException catch (e) {
      final ex = LoginWithEmailAndPasswordFailure.code(e.code);
      print('Firebase Auth Exception - ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = LoginWithEmailAndPasswordFailure();
      print('Exception - ${ex.message}');
      throw ex;
    }
  }

  Future<void> logout() async => await auth.signOut();
}
