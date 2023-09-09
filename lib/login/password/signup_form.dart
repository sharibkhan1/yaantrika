import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'signup_screen.dart';
// Define the text variables
const String FullName = 'Full Name';
const String Email = 'Email';
const String PhoneNo = 'Phone Number';
const String Password = 'Password';
const String Signup = 'Sign Up';

// Define FormHeight as a constant double value
const double FormHeight = 60.0; // You can adjust the value as needed

class SignUpFormWidget extends StatelessWidget {
  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController passwordController;

  const SignUpFormWidget({
    Key? key,
    required this.fullNameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.passwordController,
  }) : super(key: key);
  bool _validateForm(BuildContext context) {
    final String fullName = fullNameController.text.trim();
    final String email = emailController.text.trim();
    final String password = passwordController.text.trim();
    final String phoneNumber = phoneNumberController.text.trim();

    if (fullName.isEmpty || email.isEmpty || password.isEmpty || phoneNumber.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all required fields.'),
        ),
      );
      return false;
    }

    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: FormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: fullNameController,
              decoration: InputDecoration(
                label: Text(FullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
                controller:emailController,
              decoration: InputDecoration(
                label: Text(Email),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              controller:phoneNumberController,
              decoration: InputDecoration(
                label: Text(PhoneNo),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: FormHeight - 20),
            TextFormField(
              controller:passwordController,
              decoration: InputDecoration(
                label: Text(Password),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(height: FormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_validateForm(context)) {
                    // Proceed with the signup process
                    // You can call your signup logic here
                    // If signup is successful, navigate to the welcome page.
                    // For example, you can use Firebase Authentication or your custom logic.
                    // After successful signup, navigate to the welcome page.
                    Navigator.pushReplacementNamed(context, '/');
                  } else {
                    // Show an error message on the signup page
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please fill in all required fields.'),
                      ),
                    );
                  }
                },
                child: Text(Signup.toUpperCase()),
              )


            )
          ],
        ),
      ),
    );
  }
}
