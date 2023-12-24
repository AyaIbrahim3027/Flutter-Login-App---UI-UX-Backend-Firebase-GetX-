import 'package:flutter/material.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
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
        Text.rich(TextSpan(text: 'Dont have an account? ',
          style: Theme.of(context).textTheme.bodyMedium,
          children: const [
            TextSpan(text: 'Sign Up',
              style: TextStyle(color: Colors.blue,),),
          ],),),
        ),
      ],
    );
  }
}
