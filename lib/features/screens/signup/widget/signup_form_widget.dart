import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/features/controllers/signup_controller.dart';
import 'package:login/features/screens/forget_password/forget_password_otp/otp_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text('Full Name'),
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text('Email'),
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.phoneNumber,
              decoration: const InputDecoration(
                label: Text('Phone Number'),
                prefixIcon: Icon(
                  Icons.numbers,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text('Password'),
                prefixIcon: Icon(
                  Icons.lock,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // SignUpController.instance.registerUser(
                    //     controller.email.text.trim(),
                    //     controller.password.text.trim());
                    SignUpController.instance
                        .phoneAuthentication(controller.phoneNumber.text.trim());
                    Get.to(()=> const OTPScreen());
                  }
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff272727),
                  side: const BorderSide(
                    color: Color(0xff272727),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                ),
                child: Text('Sign Up'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
