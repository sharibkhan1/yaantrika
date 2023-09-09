import 'package:first_pr/login/password/bottom_sheet_widget.dart';
import 'package:first_pr/login/password/forget_password_model_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'login_footer.dart';
import 'login_form.dart';
import 'login_header_widget.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'package:first_pr/recycle.dart';
// Define your variables
const double tFormHeight = 60.0; // Replace with your desired form height
const String tEmail = 'Email'; // Replace with your email label
const String tPassword = 'Password'; // Replace with your password label
const String tForgetPassword = 'Forgot Password?'; // Replace with your forgot password label
const String tLogin = 'Login'; // Replace with your login button label
const double tDefaultSize = 16.0; // You can adjust the value as needed

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowBottomSheet(context);
                  }, child: const Text("ForgetPassword?")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(), // Replace with the name of your MyApp class
                    ),
                  );
                },

                child: Text("Login".toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }


}



