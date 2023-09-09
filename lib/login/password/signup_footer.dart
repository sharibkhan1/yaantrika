import 'package:flutter/material.dart';
import 'form_headrer.dart';
import 'signup_form.dart';
import 'signup_screen.dart';// Replace with the actual file containing your constants
import 'LoginPage.dart';
class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/images/1689022856-home-player-prime-lifestyle-hero-bg-2xl-removebg-preview (1).png'),
              width: 20.0,
            ),
            label: Text("SignInWithGoogle".toUpperCase()),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()), // Navigate to SignupPage
            );
          },
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: "Already have an account?", // Use the variable here
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(text: "login".toUpperCase()), // Use the variable here
          ])),
        )
      ],
    );
  }
}
