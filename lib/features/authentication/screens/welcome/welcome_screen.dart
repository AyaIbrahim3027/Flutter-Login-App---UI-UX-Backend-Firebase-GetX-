import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/fade_in_animation/animation_design.dart';
import 'package:login/fade_in_animation/fade_in_animation_model.dart';

import '../../../../fade_in_animation/fade_in_animation_controller.dart';
import '../login/login_screen.dart';
import '../signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
   const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor:
          isDarkMode ? const Color(0xff272727) : const Color(0xFFFFE082),
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomBefore: -100,
              bottomAfter: 0,
              leftBefore: 0,
              leftAfter: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: const AssetImage('assets/welcome.png'),
                    height: height * 0.5,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Building Awesome Apps',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Let's start your journey with us on this "
                        "amazing and easy platform",
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(()=>const LoginScreen()),
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            foregroundColor: const Color(0xff272727),
                            side: const BorderSide(
                              color: Color(0xff272727),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 5),
                          ),
                          child: Text('Login'.toUpperCase()),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(()=>const SignUpScreen()),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
