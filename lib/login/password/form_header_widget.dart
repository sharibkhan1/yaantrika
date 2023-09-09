import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final double heightBetween;
  final TextAlign textAlign;

  const FormHeaderWidget({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.heightBetween,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image), // Assuming 'image' is a valid image path
        SizedBox(height: heightBetween),
        Text(
          title,
          style: TextStyle(
            fontSize: 24, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
          ),
          textAlign: textAlign,
        ),
        SizedBox(height: 8), // Adjust the spacing between title and subtitle
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 16, // Adjust the font size as needed
          ),
          textAlign: textAlign,
        ),
      ],
    );
  }
}
