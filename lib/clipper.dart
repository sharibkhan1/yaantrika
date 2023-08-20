import 'dart:html';

import 'package:flutter/material.dart';

class BigClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
 throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    throw UnimplementedError();
  }
}
class SmallClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
  
}