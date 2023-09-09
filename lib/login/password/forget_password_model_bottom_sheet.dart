import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bottom_sheet_widget.dart';
import 'forget_password_button_widget.dart';
import 'forget_password_mail.dart';

const double tDefaultSize = 16.0;

class ForgetPasswordScreen {
  static PersistentBottomSheetController<dynamic> buildShowBottomSheet(
      BuildContext context) {
    return showBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ForgetPassword", style: Theme.of(context).textTheme.headline2),
            Text("ForgetPasswordSub", style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPasswordMail(),
                  ),
                );
              },

              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  children: [
                    Icon(Icons.mail_outline_rounded, size: 60),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email", style: Theme.of(context).textTheme.headline6),
                        Text("Reset Email", style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          /*  const SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              title: "Phone no",
              subTitle: "Reset Phone no",
              btnIcon: Icons.mobile_friendly_rounded,
              onTap: () {
                // Add navigation or action for the Phone button here if needed.
              },
            ),*/
          ],
        ),
      ),
    );
  }
}

