import 'package:first_pr/laptop.dart';
import 'package:flutter/material.dart';
import 'mobile.dart';
import 'pc.dart';
import 'laptop.dart';
import 'onhover.dart';

class RecyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xFFBFEDDD),
        child: Stack(
          children: [
            Container(
              color: Color(0xFFBFEDDD),
              child: Image.asset(
                'assets/images/weee-removebg-preview.png',
                width: 450,
                height: 245,
              ),
            ),
            Positioned(
              top: 60,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  // Navigate back to the main page
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/Screenshot 2023-08-20 181147.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 700,
              margin: EdgeInsets.only(top: 170),
              decoration: ShapeDecoration(
                color: Color(0xFFF5AAAA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
          /*    child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.asset(
                  'assets/images/wp8402470-removebg-preview.png',
                  fit: BoxFit.contain, // Adjust the image fitting as needed
                ),
              ),*/
            ),

            Positioned(
              top: 230,
              left: 2,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the new page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MobilePage()),
                  );
                },
                child: OnHoverButton(
                  child: Container(
                    width: 390,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 3.0, // Border width
                      ),

                      color: Color(0xFF45C060).withOpacity(0.5), // Green shade for a sustainable theme
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 4,
                          spreadRadius: 4,
                          offset: Offset(6, 6),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/images__2_-removebg-preview.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text(
                                'MOBILE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 450,
              left: 2,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the new page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Laptoppage()),
                  );
                },
                child: Container(
                  width: 390,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 3.0, // Border width
                    ),
                    color: Color(0xFF45C060).withOpacity(0.5), // Green shade for a sustainable theme
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 4,
                        spreadRadius: 4,
                        offset: Offset(6, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/laptop-computer-recycling-symbol-on-260nw-2308401789-removebg-preview.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              'LAPTOP',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 665,
              left: 2,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the new page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pcpage()),
                  );
                },
                child: Container(
                  width: 390,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 3.0, // Border width
                    ),
                    color: Color(0xFF45C060).withOpacity(0.5), // Green shade for a sustainable theme
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 4,
                        spreadRadius: 4,
                        offset: Offset(6, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/image__1_-removebg-preview.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              'PC',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
