import 'package:flutter/material.dart';

class MobilePage extends StatefulWidget {
  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mobile page'),
      ),
      body: Stack( // Use a Stack to overlay the CustomPaint and Image widgets
        children: [
          CustomPaint(
            painter: RPSCustomPainter(),
            child: Container(
              height: 400,
              alignment: Alignment.center,
              child: Text(
                "MOBILE INFORMATION",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 51, 211, 55)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*-0.0010667,size.height*-0.0010000);
    path_0.lineTo(size.width*0.9952000,size.height*0.0015667);
    path_0.lineTo(size.width*0.9996000,size.height*0.5359667);
    path_0.quadraticBezierTo(size.width*1.0014000,size.height*0.6921333,size.width*1.0009000,size.height*0.7341667);
    path_0.quadraticBezierTo(size.width*0.9829333,size.height*0.5950000,size.width*0.8602667,size.height*0.5982333);
    path_0.lineTo(size.width*0.5934333,size.height*0.5960000);
    path_0.lineTo(size.width*0.3889333,size.height*0.5972000);
    path_0.quadraticBezierTo(size.width*0.2335000,size.height*0.5972000,size.width*0.0801333,size.height*0.5972000);
    path_0.quadraticBezierTo(size.width*-0.0127667,size.height*0.5971667,size.width*0.0000333,size.height*0.4277000);
    path_0.lineTo(size.width*-0.0010667,size.height*-0.0010000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

