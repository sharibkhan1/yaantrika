import 'dart:async';
import 'package:first_pr/login/password/SignupPage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:ui';
import '../../account_detail.dart';
import '../../report.dart';
import '../../recycle.dart';
import 'welcome.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';
import 'forget_password_mail.dart';
import 'forget_password_model_bottom_sheet.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'varun Gay',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome', // Set the initial route
      routes: {
        '/welcome': (context) => WelcomeScreen(), // Welcome screen as the initial route
        '/login': (context) => LoginPage(),// Define your login page
        '/signup': (context) => SignupPage(), // Define your signup page
      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
 // State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin {
  Color customBlackColor = Colors.black;
  Color customWhiteColor = Colors.white;
  double turns = 0.0;
  bool isClicked = false;
  bool _isSidebarOpen = false;
  bool _isElevated1 = false;
  bool _isElevated2 = false;
  bool _isElevated3 = false; // Track sidebar state
  late AnimationController _controller;
  bool _isElevated = false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleSidebar() {
    setState(() {
      _isSidebarOpen = !_isSidebarOpen;
    });
  }
  void _navigateToRecyclePage() {
  }

  List<bool> buttonElevationStates = [false, false, false];
  List<Map<String, dynamic>> imageList = [
    {
      "id": 1,
      "image_path": 'assets/images/Demon Samurai by Kuroi Susumu_ (1).png'
    },
    {"id": 2, "image_path": 'assets/images/download.png'},
    {"id": 3, "image_path": 'assets/images/luffy.png'},
    //{"id":4, "image_path":'assets/images/sekiro-shadows-die-twice-1-54276-1024x576-MM-80.webp'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Builder(
  builder: (BuildContext context) {
  return Stack(
  children: [
  Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Color(0xFF042148).withOpacity(0.9), // Blue color at the bottom
          Color(0xFF8CD8BF).withOpacity(0.5), // Green color at the top
        ],
      ),
    ),
  /* decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Color(0xFF09631D).withOpacity(0.5),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),),*/
  child: SingleChildScrollView(
  child: Column(
  children: [
  Stack(
  children: [
  Container(
  width: 460,
  height: 106,
  decoration: ShapeDecoration(
  //color: Color(0xFF09631D),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
  bottomLeft: Radius.circular(30),
  bottomRight: Radius.circular(30)),
  ),
  ),
  ),
  Positioned(
  left: 0,
  child: Container(
  padding: EdgeInsets.only(left: 15, top: 35),
  child: Align(
  alignment: Alignment.centerLeft,
  child: GestureDetector(
  onTap: () {
  if (isClicked) {
  setState(() => turns -= 1 / 4);
  _controller.reverse();
  } else {
  setState(() => turns += 1 / 4);
  _controller.forward();
  }
  isClicked = !isClicked;
  toggleSidebar(); // Toggle sidebar state
  },
  child: Transform.rotate(
  angle: turns * 2 * 3.14159,
  child: AnimatedContainer(
  curve: Curves.easeOutExpo,
  duration: const Duration(seconds: 1),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(
  15),
  color: customWhiteColor,
  boxShadow: [
  BoxShadow(
  blurRadius: 5,
  spreadRadius: 1,
  offset: isClicked
  ? const Offset(-7, 7)
      : const Offset(-7, 7),
  color: Colors.black38,
  ),
  BoxShadow(
  blurRadius: 5,
  spreadRadius: 1,
  offset: isClicked
  ? const Offset(5, -5)
      : const Offset(5, -5),
  color: Colors.white70,
  ),
  ],
  ),
  child: SizedBox(
  height: 50,
  width: 50,
  child: Center(
  child: AnimatedIcon(
  icon: AnimatedIcons.menu_close,
  progress: _controller,
  size: 35,
  color: Colors.redAccent,
  ),
  ),
  ),
  ),
  ),
  ),
  ),
  ),
  ),
  Positioned.fill(
  child: Align(
  alignment: Alignment.center,
  child: Text(
  'vsss',
  style: TextStyle(
  color: Colors.white,
  fontSize: 64,
  fontFamily: 'Oleo Script',
  fontWeight: FontWeight.w700,
  ),
  ),
  ),
  ),
  ],
  ),
  Container(
  height: 20,
  ),
    Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList.map(
                        (item) => Container(
                      width: 380,
                      height: 380,  // Make sure width and height are the same for a perfect circle
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(40),
                          image: DecorationImage(
                          image: AssetImage(
                            item['image_path'],
                          ),
                            fit: BoxFit.fill,
                      ),

                      ),
                  ),
                  ).toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: false,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    height: 300,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList
                    .asMap()
                    .entries
                    .map(
                      (entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? Colors.green
                              : Colors.redAccent,
                        ),
                      ),
                    );
                  },
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ],
    ),

    Container(
  width: double.infinity,
  height: 100,
  padding: EdgeInsets.only(left: 30, bottom: 5),
  child: Align(
  alignment: Alignment.bottomLeft,
  /*  child: Text(
                                'RECYCLE ?????',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),*/
  ),
  ),
       Container(
        width: 350,
        height: 670,
        margin: EdgeInsets.only(bottom:0),
        child: Stack(
          children: [
            // Frost Glass Container
            Container(
              width: 350,
              height: 350,
              margin: EdgeInsets.only(bottom: 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.greenAccent.withOpacity(0.3),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 230,
                    child: Image.asset(
                      "assets/images/135492596-battery-recycling-background-with-electronic-waste-symbols-isometric-vector-illustration.png",
                    ),
                  ),
                ],
              ),
            ),

            // Additional Container (Black Container)
            Positioned(
              top: 340,
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xFF8CD8BF),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width, // Set width to the width of the screen
                height: 230,
                child: Image.asset(
                  "assets/images/wall_e_on_earth-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Elevated Button Container (Centered)
            Positioned(
              top: 365,
              left: 40,
              right: 40,
              child: Container(
                height: 80,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecyclePage()), // Replace with your RecyclePage widget
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    child: Center(
                      child: Text(
                        'RECYCLE',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color(0xFF8CD8BF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(-7, 7),
                          blurRadius: 3,
                          spreadRadius: 3,
                        ),
                        BoxShadow(
                          color: Colors.white70,
                          offset: Offset(7, -7),
                          blurRadius: 3,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Image at Bottom Right
          ],
        ),
      ),





  ],

  ),
  ),
  ),
  if (_isSidebarOpen)
  Positioned(
  top: 0,
  bottom: 0,
  left: 60,
  child: Container(
  width: 450,
  child: ClipRect(
  child: BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
  child: Container(
  decoration: BoxDecoration(
  gradient: LinearGradient(
  colors: [
  Colors.redAccent.withOpacity(0.5),
  Colors.greenAccent.withOpacity(0.5),
  ],
  begin: Alignment.topCenter,
  end: Alignment.center,
  ),
  ),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Container(
  margin: EdgeInsets.only(top: 30),
  height: 100,
  decoration: BoxDecoration(
  shape: BoxShape.circle,
  image: DecorationImage(
  image: AssetImage(
  'assets/images/174692c6cbe2c30720a1b139cb61fd9f.jpg'),
  ),
  ),
  padding: EdgeInsets.symmetric(
  vertical: 30, horizontal: 20),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
  Text(
  'Sidebar Menu',
  style: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  ),
  ),
  ],
  ),
  ),
  const Divider(
  color: Colors.black,
  height: 50,
  thickness: 3,
  indent: 0,
  endIndent: 0,
  ),
  ListTile(
  title: GestureDetector(
  onTap: () {
  setState(() {
  _isElevated1 = !_isElevated1;
  });
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => InfoPage(),
  ),
  );
  },
  child: AnimatedContainer(
  duration:
  const Duration(milliseconds: 200),
  child: Text(
  'bakaa',
  style: TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w500,
  ),
  ),
  padding: EdgeInsets.all(25),
  decoration: BoxDecoration(
  gradient: LinearGradient(
  colors: [
  Colors.redAccent.withOpacity(0.2),
  Colors.greenAccent.withOpacity(0.0),
  ],
  begin: Alignment.center,
  end: Alignment.center,
  ),
  borderRadius: BorderRadius.circular(15),
  boxShadow: _isElevated1
  ? null
      : [
  BoxShadow(
  color: Colors.black38
      .withOpacity(0.4),
  offset: Offset(-8, 8),
  blurRadius: 2,
  spreadRadius: 3,
  ),
  BoxShadow(
  color: Colors.white70
      .withOpacity(0.4),
  offset: Offset(7, -7),
  blurRadius: 2,
  spreadRadius: 3,
  ),
  ],
  ),
  ),
  ),
  onTap: () {
  print("Button 1 tapped");
  },
  ),
  const Divider(
  height: 30,
  ),
  ListTile(
  title: GestureDetector(
  onTap: () {
  setState(() {
  _isElevated2 = !_isElevated2;
  });
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => ReportPage(),
  ),
  );
  },
  child: AnimatedContainer(
  duration:
  const Duration(milliseconds: 200),
  child: Text(
  'sekiro',
  style: TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w500,
  ),
  ),
  padding: EdgeInsets.all(25),
  decoration: BoxDecoration(
  gradient: LinearGradient(
  colors: [
  Colors.redAccent.withOpacity(0.0),
  Colors.greenAccent.withOpacity(0.0),
  ],
  begin: Alignment.topCenter,
  end: Alignment.center,
  ),
  borderRadius: BorderRadius.circular(15),
  boxShadow: _isElevated2
  ? null
      : [
  BoxShadow(
  color: Colors.black38
      .withOpacity(0.4),
  offset: Offset(-8, 8),
  blurRadius: 2,
  spreadRadius: 3,
  ),
  BoxShadow(
  color: Colors.white70
      .withOpacity(0.4),
  offset: Offset(7, -7),
  blurRadius: 2,
  spreadRadius: 3,
  ),
  ],
  ),
  ),
  ),
  onTap: () {
  print("Button 2 tapped");
  },
  ),
  const Divider(
  height: 30,
  ),
  ListTile(
  title: GestureDetector(
  onTap: () {
  setState(() {
  _isElevated3 = !_isElevated3;
  });
  },
  child: AnimatedContainer(
  duration:
  const Duration(milliseconds: 200),
  child: Text(
  'arthur',
  style: TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w500,
  ),
  ),
  padding: EdgeInsets.all(25),
  decoration: BoxDecoration(
  color:
  Colors.greenAccent.withOpacity(0.0),
  borderRadius: BorderRadius.circular(15),
  boxShadow: _isElevated3
  ? null
      : [
  BoxShadow(
  color: Colors.black38
      .withOpacity(0.4),
  offset: Offset(-8, 8),
  blurRadius: 2,
  spreadRadius: 3,
  ),
  BoxShadow(
  color: Colors.white70
      .withOpacity(0.4),
  offset: Offset(7, -7),
  blurRadius: 2,
  spreadRadius: 3,
  ),
  ],
  ),
  ),
  ),
  onTap: () {
  print("Button 3 tapped");
  },
  ),
  // Add more items to your sidebar menu
  ],
  ),
  ),
  ),
  ),
  ),
  ),

  ],
  );
  },
  ),
  );
  }
  }

/*                               ),
                                  // Add more items to your sidebar menu
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ]
            );
          }
      ),
    );
  }
}*/