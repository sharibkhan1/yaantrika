import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts package
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart'; // Import the OTP package
import 'package:otp_text_field/otp_text_field.dart';
class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define the placeholder variables
    const String tOtpTitle = "Your OTP Title";
    const String tOtpSubTitle = "Your OTP Subtitle";
    const String tOtpMessage = "Your OTP Message";

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0), // Use your desired padding value
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
             /* style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),*/
            ),
            Text(
              tOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 40.0),
            const Text(
              "$tOtpMessage support@codingwitht.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) => print("OTP is => $code"),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add the action you want to perform when the button is pressed
                },
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
