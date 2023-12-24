import 'package:flutter/material.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(height: 15,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage('assets/google.png'),
              width: 20,),
            onPressed: () {},
            label: const Text('Sign In With Google'),
            style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(),
              foregroundColor: const Color(0xff272727),
              side: const BorderSide(
                color: Color(0xff272727),
              ),
              padding: const EdgeInsets.symmetric(vertical: 5),
            ),
          ),
        ),
        const SizedBox(height: 15,),
        TextButton(onPressed: (){}, child:
        Text.rich(TextSpan(text: 'Already have an account? ',
          style: Theme.of(context).textTheme.bodyMedium,
          children:  [
            TextSpan(text: 'Login'.toUpperCase(),
              style: const TextStyle(color: Colors.blue,),),
          ],),),
        ),
      ],
    );
  }
}
