import 'package:flutter/material.dart';
import 'login_footer.dart';
import 'login_form.dart';
import 'login_header_widget.dart';
// Define your variables
const String tWelcomeScreenImage = 'assets/images/luffy.png'; // Replace with your image path
const String tLoginTitle = 'Login Title'; // Replace with your login title
const String tLoginSubTitle = 'Login Subtitle'; // Replace with your login subtitle

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(tWelcomeScreenImage),
          height: size.height * 0.2,
        ),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline1),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
