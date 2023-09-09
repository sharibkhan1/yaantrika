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

      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: 420,
          decoration: BoxDecoration(
            image:DecorationImage(
            image: AssetImage('assets/images/1e7f54db2278633340f7ccbdf95ca9ed.jpg'),
          fit:BoxFit.cover,
          //color: Color(0xFFDAF1DE),
          ),
          ),
          child: Stack(
            children: [
              Positioned(
                top:80,
                left: 85,
                child: Text(
                "ITEM TO RECYCLE",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    shadows: [
                          Shadow(
                            color: Colors.orange,      // Shadow color
                            offset: Offset(5, 5),     // Shadow offset (X, Y)
                            blurRadius: 10,
                          ),
                    ],
                  ),

              ),
              ),
             /*Container(
               // color: Color(0xFFDAF1DE),
                child: Image.asset(
                  'assets/images/weee-removebg-preview.png',
                  width: 420,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),*/
             /* Positioned(
                top: 246,
                right:1 ,
                child: Container(
                  color: Color(0xFFBFEDDD),
                  child: Image.asset(
                    'assets/images/weee-removebg-preview.png',
                    width: 450,
                    height: 270,
                  ),
                ),
              ),
              Positioned(
                top: 513,
                right:1 ,
                child: Container(
                  color: Color(0xFFBFEDDD),
                  child: Image.asset(
                    'assets/images/weee-removebg-preview.png',
                    width: 450,
                    height: 270,
                  ),
                ),
              ),
              Positioned(
                top: 780,
                right:0 ,
                child: Container(
                  color: Color(0xFFBFEDDD),
                  child: Image.asset(
                    'assets/images/weee-removebg-preview.png',
                    width: 450,
                    height: 270,
                  ),
                ),
              ),*/
              Positioned(
                top: 70,
                left: 15,
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
                height: 630,
                margin: EdgeInsets.only(top: 170),
                decoration: ShapeDecoration(
                 // color: Color(0xFFF5AAAA),
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
                top: 180,
                left: 10,
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
                      /*  gradient: LinearGradient(
                          colors: [
                            Color(0xFFF5AAAA).withOpacity(0.5),
                            Color(0xFF45C060).withOpacity(0.5),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),*/
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                        ),
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),

                        color: Color(0xFF235347).withOpacity(0.5), // Green shade for a sustainable theme
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 4,
                            spreadRadius: 4,
                            offset: Offset(6, 6),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 390,
                              height: 170,
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Image.asset(
                                  'assets/images/9595109f79bed80c733d4b267f2b32f0.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                            Positioned(
                              right: 20,
                              bottom: 60,
                                child: Text(
                                  'MOBILE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    shadows: [
                                      Shadow(
                                        offset: Offset(7, 7), // Adjust the values for the shadow offset as needed
                                        blurRadius: 60,        // Adjust the blur radius for the shadow as needed
                                        color: Colors.white, // Adjust the shadow color as needed
                                      ),
                                    ],
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
                top: 390,
                left: 10,
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
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF5AAAA).withOpacity(0.5),
                            Color(0xFF235347).withOpacity(0.5),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                      ),
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 2.0, // Border width
                      ),
                   //  color: Color(0xFF235347).withOpacity(0.5), // Green shade for a sustainable theme
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 4,
                          spreadRadius: 4,
                          offset: Offset(6, 6),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 390,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Image.asset(
                                'assets/images/d26a03dce6f5aece4506536931e33d90.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                          bottom: 60,
                          child: Text(
                            'LAPTOP',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  offset: Offset(7, 7), // Adjust the values for the shadow offset as needed
                                  blurRadius: 60,        // Adjust the blur radius for the shadow as needed
                                  color: Colors.white, // Adjust the shadow color as needed
                                ),
                              ],
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 600,
                left: 10,
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

                       gradient: LinearGradient(
                          colors: [
                            Color(0xFFF5AAAA).withOpacity(0.2),
                            Color(0xFF235347).withOpacity(0.5),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                      ),
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 2.0, // Border width
                      ),
                   //   color: Color(0xFF235347).withOpacity(0.5), // Green shade for a sustainable theme
                      boxShadow: [
                        BoxShadow(

                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 4,
                          spreadRadius: 4,
                          offset: Offset(6, 6),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 390,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Image.asset(
                                'assets/images/1689022856-home-player-prime-lifestyle-hero-bg-2xl.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                              bottom: 60,
                              child: Text(
                                'PC',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(7, 7), // Adjust the values for the shadow offset as needed
                                      blurRadius: 60,        // Adjust the blur radius for the shadow as needed
                                      color: Colors.white, // Adjust the shadow color as needed
                                    ),
                                  ],
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
      ),


    );
  }
}
