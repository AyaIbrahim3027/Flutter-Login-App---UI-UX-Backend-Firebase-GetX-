import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor:
          isDarkMode ? const Color(0xff272727) : const Color(0xFFFFE082),
      body: Container(
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
                    onPressed: () {},
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
                    onPressed: () {},
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
    );
  }
}
