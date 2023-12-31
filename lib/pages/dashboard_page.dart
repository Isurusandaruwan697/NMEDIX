import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medix/auth/auth_service.dart';
import 'package:medix/pages/article_page.dart';
import 'package:medix/pages/drawer_page.dart';
import 'package:medix/pages/ec_approval_page.dart';
import 'package:medix/pages/feedback_page.dart';
import 'package:medix/pages/medicalappro_screen.dart';
import 'package:medix/pages/my_appointments_page.dart';
import 'package:medix/widgets/homepage_card_small.dart';

class Dashboard extends StatefulWidget {
  // const Dashboard({super.key});

  final User user;
  Dashboard({required this.user});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
//just for test
  // void logout() async {
  //   await FirebaseAuth.instance.signOut();
  // }

  @override
  Widget build(BuildContext context) {
    final user = widget.user;

    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: Drower(user: user),
      body: Column(
        children: [
          Container(
            height: devHeight * 0.21,
            width: double.infinity,
            decoration: const ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0.00, 1.00),
                colors: [Color(0xFF742BBA), Color.fromARGB(255, 193, 127, 255)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    elevation: 0,
                  ),
                ),

                // Positioned(
                //   top: 30,
                //   right: 10,
                //   child: IconButton(
                //     color: Colors.white,
                //     onPressed: () {
                //       AuthService().signOut();
                //     },
                //     icon: const Icon(Icons.menu),
                //   ),
                // ),
                Positioned(
                  top: 90,
                  left: 20,
                  child: Image.asset(
                    'assets/logo.png',
                    height: devWidth * 0.125,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0),

          //Apoinment cards

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Medical Apoinment Card
              GestureDetector(
                child: HomePageCardSmall(
                  devWidth: devWidth,
                  devHeight: devHeight,
                  title: "Medical\nRequest",
                  sizeboxWidth: 18,
                  imgUrl: 'assets/mreq.png',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MedicalApproval(user: user)),
                  );
                },
              ),

              //EC Appoinment Card
              GestureDetector(
                child: HomePageCardSmall(
                  devWidth: devWidth,
                  devHeight: devHeight,
                  title: "EC Approval\nRequest",
                  sizeboxWidth: 12,
                  imgUrl: 'assets/ecreq.png',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EcApproval(user: user)),
                  );
                },
              )
            ],
          ),
          const SizedBox(height: 20.0),

          // Article Card
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Article()),
                  );
                },
                child: SizedBox(
                  width: devWidth * 0.87,
                  height: (devHeight * 0.4) / 2,
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 200,
                            height: 30,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFB96CFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  bottomRight: Radius.circular(13),
                                ),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(10, 3, 0, 0),
                              child: Text(
                                "Article",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
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
          const SizedBox(height: 20.0),

          //feedback Card

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FeedbackScreen(user: user)),
                  );
                },
                child: Container(
                  width: devWidth * 0.87,
                  height: (devHeight * 0.4) / 2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/feedback.png'))),

                  child: Stack(
                    children: [
                      Positioned(
                        top: 12,
                        left: 4,
                        child: Container(
                          width: 200,
                          height: 30,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFB96CFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(13),
                                bottomRight: Radius.circular(13),
                              ),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(10, 3, 0, 0),
                            child: Text(
                              "Feedback",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     elevation: 6,
          //     minimumSize: const Size(330, 60),
          //     backgroundColor: const Color(0xFFB96CFF),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15.0),
          //     ),
          //   ),
          //   onPressed: () {},
          //   child: const Text(
          //     "View Appoinment",
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),

          GestureDetector(
            onTap: () {
              print('vliiol');

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyAppoint()));
            },
            child: SizedBox(
              width: devWidth * 0.87,
              height: 60,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: devWidth * 0.87,
                      height: 60,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xFF742BBA), Color(0xFFB96CFF)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x54000000),
                            blurRadius: 13,
                            offset: Offset(0, 0),
                            spreadRadius: 2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 10,
                    child: Icon(
                      Icons.bookmark_add_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Positioned(
                    left: (devWidth * 0.87) / 4 + 20,
                    top: 21,
                    child: Text(
                      'View Appoinment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Text('Hello, ${user.email}!'),
        ],
      ),
    );
  }
}
