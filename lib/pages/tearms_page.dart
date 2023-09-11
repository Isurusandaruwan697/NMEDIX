import 'package:flutter/material.dart';
import 'package:medix/pages/dashboard_page.dart';

class TearmsPage extends StatefulWidget {
  const TearmsPage({super.key});

  @override
  State<TearmsPage> createState() => _TearmsPageState();
}

class _TearmsPageState extends State<TearmsPage> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 35, 0, 0),
                  child: Text(
                    'Terms & \nConditions',
                    style: TextStyle(
                      color: Color(0xFF7A31C0),
                      fontSize: 36,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: devHeight * 0.05),
            SizedBox(
              width: devWidth * 0.86,
              child: const Text(
                'Welcome to NMEDIX! These terms and conditions govern your use of our mobile application. By accessing or using the app, you agree to comply with these Terms. If you do not agree with any of these Terms, please refrain from using the App.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: devHeight * 0.06),
            SizedBox(
              width: devWidth * 0.86,
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'User Obligations\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: '\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text:
                          '1.1. By using the App, you confirm that you are of legal age or have obtained the necessary consent from a parent or legal guardian.\n\n1.2. You are responsible for maintaining the confidentiality of your account credentials and for any activities performed using your account.\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: devHeight * 0.02),
            SizedBox(
              width: devWidth * 0.86,
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Privacy Policy\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n2.1. Your privacy is important to us. Please review our Privacy Policy, which explains how we collect, store, and use your personal data.\n\n2.2. By using the App, you acknowledge and consent to the collection, storage, and use of your information as described in our Privacy Policy.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        //fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: devHeight * 0.05),
            SizedBox(
              width: devWidth * 0.93,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'I agree with the terms and conditions',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          // fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'I agree with the privacy policy',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Color.fromARGB(255, 176, 173, 173),
            ),
            SizedBox(height: devHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TearmsPage()),
                    );
                  },
                  child: SizedBox(
                    width: 160,
                    height: 48,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 160,
                            height: 48,
                            decoration: ShapeDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Color.fromARGB(255, 252, 248, 255),
                                  Color.fromARGB(255, 243, 239, 246)
                                ],
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
                        const Positioned(
                          left: 45,
                          top: 14,
                          child: Text(
                            'Decline',
                            style: TextStyle(
                              color: Color.fromARGB(255, 121, 68, 172),
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     side: const BorderSide(
                //       color: Color(0xFFB96CFF),
                //     ),
                //     elevation: 6,
                //     minimumSize: const Size(150, 40),
                //     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(15.0),
                //     ),
                //   ),
                //   onPressed: () {
                //     Navigator.pushReplacement(context,
                //         MaterialPageRoute(builder: (context) => const start()));
                //   },
                //   child: const Text(
                //     "Decline",
                //     style: TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //       color: Color(0xFFB96CFF),
                //     ),
                //   ),
                // ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                    );
                  },
                  child: SizedBox(
                    width: 160,
                    height: 48,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 160,
                            height: 48,
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
                        const Positioned(
                          left: 45,
                          top: 14,
                          child: Text(
                            'Accept',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     elevation: 6,
                //     side: const BorderSide(
                //       color: Color(0xFFB96CFF),
                //     ),
                //     minimumSize: const Size(150, 40),
                //     backgroundColor: const Color(0xFFB96CFF),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(15.0),
                //     ),
                //   ),
                //   onPressed: () {
                //     Navigator.pushReplacement(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const LoginPage()));
                //   },
                //   child: const Text(
                //     "Accept",
                //     style: TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
