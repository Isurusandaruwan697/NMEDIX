import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: width,
            height: height,
            
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: width,
                    height: height,
                    child:  Image(image: AssetImage('assets/loginbackground.png'),
                    fit: BoxFit.cover,
                    height: height,
                    width: width,
                    ),
                    
                  ),
                ),

                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: width,
                    height: height*0.13,
                    decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x42B96CFF),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  ),

                ),

                Positioned(
                left: width*0.02,
                top: height*0.02,
                child: Container(
                  width: width*0.2,
                  height: height*0.1,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logocolor.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),




              Positioned(
                left: width*0.48,
                top: height*0.2,
                child: Container(
                  width: width*0.4,
                  height: height*0.7,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: width*0.4,
                          height: height*0.7,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0.9399999976158142),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(34),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 22,
                                offset: Offset(0, 0),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.125,
                        top: height*0.05,
                        child: const Text(
                          'Admin Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 38,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.1,
                        top: height*0.6,
                        child: Container(
                          width: width*0.18,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: width*0.18,
                                  height: 40,
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
                                left: width*0.07,
                                top: height*0.015,
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.02,
                        top: height*0.2,
                        child: Container(
                          width: width*0.36,
                          height: 159,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 10,
                                child: Text(
                                  'Username',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 30,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 110,
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 30,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 196,
                                top: 0,
                                child: Container(
                                  width: 356,
                                  height: 59,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 356,
                                          height: 59,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 9,
                                                offset: Offset(1, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 15,
                                        top: 18,
                                        child: Text(
                                          'Enter Your Username',
                                          style: TextStyle(
                                            color: Color(0xFFC4C4C4),
                                            fontSize: 20,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 196,
                                top: 100,
                                child: Container(
                                  width: 356,
                                  height: 59,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 356,
                                          height: 59,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 9,
                                                offset: Offset(1, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 15,
                                        top: 18,
                                        child: Text(
                                          'Enter Your Password',
                                          style: TextStyle(
                                            color: Color(0xFFC4C4C4),
                                            fontSize: 20,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
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
                    ],
                  ),
                ),
              ),
              ],
            ),
            
          )
        ],
      ),
    );
  }
}