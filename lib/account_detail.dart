import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('info page'),
      ),
      body: Center(
        child: Text('This is the Info Page'),
      ),
    );
  }
}