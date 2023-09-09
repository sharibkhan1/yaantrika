import 'dart:ffi';

import 'package:flutter/material.dart';
import 'form_headrer.dart';
import 'signup_form.dart';
import 'signup_footer.dart';
import 'SignupPage.dart';

// Define DefaultSize as a constant double value
const double DefaultSize = 16.0;

class SignupScreen extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void _handleSignUp(BuildContext context) {
    // Implement your signup logic here
    final String fullName = fullNameController.text.trim();
    final String email = emailController.text.trim();
    final String password = passwordController.text.trim();

    if (fullName.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      // Here, you can use a user authentication service to sign up the user.
      // If signup is successful, navigate to the welcome page.
      // For example, you can use Firebase Authentication or your custom logic.
      // After successful signup, navigate to the welcome page.
      Navigator.pushReplacementNamed(context, '/');
    }
  }
  SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(DefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  image: 'assets/images/luffy.png',
                  title: "Get on Board!",
                  subTitle: "Create your profile to start your journey with us..",
                  imageHeight: 0.4,
                ),
                SignUpFormWidget(
                  fullNameController: fullNameController,
                  emailController: emailController,
                  phoneNumberController: phoneNumberController,
                  passwordController: passwordController,
                ),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


