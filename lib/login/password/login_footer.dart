import 'package:flutter/material.dart';
import 'login_footer.dart';
import 'login_form.dart';
import 'login_header_widget.dart';
import 'SignupPage.dart';
import 'signup_screen.dart';
// Define your variables
const double tFormHeight = 60.0; // Replace with your desired form height
const String tGoogleLogoImage = 'assets/images/q8-vPggS_400x400-removebg-preview.png'; // Replace with your Google logo image path
const String tSignInWithGoogle = 'Sign in with Google'; // Replace with your Google sign-in text
const String tDontHaveAnAccount = "Don't have an account?"; // Replace with your text
const String tSignup = 'Sign Up'; // Replace with your sign-up text

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(tGoogleLogoImage), width: 20.0),
            onPressed: () {},
            label: const Text("SignInWithGoogle"),
          ),
        ),
        const SizedBox(height: tFormHeight - 20),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignupScreen()), // Navigate to SignupPage
            );
          },
          child: Text.rich(
            TextSpan(
                text: "DontHaveAnAccount",
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(text: "Signup", style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ],
    );
  }
}
