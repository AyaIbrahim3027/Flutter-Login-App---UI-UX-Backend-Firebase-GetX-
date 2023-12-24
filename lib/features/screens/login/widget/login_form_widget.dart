import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: 'Email',
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password',
                  hintText: 'Password',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_sharp),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.blue),
                  )),
            ),
            SizedBox(
              width: double.infinity,
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
                  child: Text('Login'.toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
}