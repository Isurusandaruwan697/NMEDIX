import 'package:flutter/material.dart';
import 'package:medix/pages/login_page.dart';

class WelcPage extends StatefulWidget {
  const WelcPage({super.key});

  @override
  State<WelcPage> createState() => _WelcPageState();
}

class _WelcPageState extends State<WelcPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: height,
            child: Stack(
              children: [
                Positioned(
                  left: width * 0.15,
                  top: height * 0.08,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: const AssetImage('assets/logocolor.png'),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                  ),
                ),
                Positioned(
                  left: width * 0.08,
                  top: height * 0.25,
                  child: const Text(
                    'Welcome to NMEDIX !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF742BBA),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: width * 0.08,
                  top: height * 0.3,
                  child: SizedBox(
                    width: 250,
                    height: 70,
                    child: Text(
                      "Let's get you started on your health journey.\nFollow these steps to unlock a world \nof seamless healthcare:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    width: width * 0.7,
                    height: height * 0.65,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/doctor.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: width * 0.18,
                  top: height * 0.42,
                  child: Container(
                    width: width * 0.72,
                    height: height * 0.3,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: width * 0.72,
                            height: height * 0.3,
                            decoration: ShapeDecoration(
                                color: Colors.white
                                    .withOpacity(0.7400000143051147),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0xB2B96CFF),
                                    blurRadius: 4,
                                    offset: Offset(0, 0),
                                    spreadRadius: 4,
                                  )
                                ]),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 35,
                          child: Container(
                            width: 250,
                            height: 165,
                            child: const Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 70,
                                  child: Text(
                                    "Step 2: Schedule  appointments with just a \nfew taps. our health, your way.",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 0,
                                  child: Text(
                                    "Step 1: Log  in to  your account  using  your \nusername and set a password. It's your key to \nbetter care!",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 130,
                                  child: Text(
                                    "Step 3: Discover our innovative features for\neffortless  appointment booking and more...",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: width * 0.1,
                  bottom: height * 0.1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Container(
                      width: width * 0.4,
                      height: 48,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: width * 0.4,
                              height: 48,
                              decoration: ShapeDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(0.00, -1.00),
                                    end: Alignment(0, 1),
                                    colors: [
                                      Color(0xFF742BBA),
                                      Color(0xFFB96CFF)
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x54000000),
                                      blurRadius: 4,
                                      offset: Offset(0, 0),
                                      spreadRadius: 4,
                                    )
                                  ]),
                            ),
                          ),
                          const Positioned(
                            left: 42,
                            top: 14,
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
