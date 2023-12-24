import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/features/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashScreenController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashScreenController.animate.value ? 0 : -30,
              left: splashScreenController.animate.value ? 0 : -30,
              child: Container(
                width: 100,
                height: 110,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 100,
              left: splashScreenController.animate.value ? 40 : -40,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Learn To Code',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      'Free For Everyone',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashScreenController.animate.value ? 130 : -130,
              left: splashScreenController.animate.value ? -45 : 45,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage('assets/hacker.png'),
                ),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashScreenController.animate.value ? 40 : -40,
              right: splashScreenController.animate.value ? 20 : -20,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
