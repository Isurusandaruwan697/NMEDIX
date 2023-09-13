import 'package:flutter/material.dart';

class MyAppointPop extends StatefulWidget {
  const MyAppointPop({super.key});

  @override
  State<MyAppointPop> createState() => _MyAppointPopState();
}

class _MyAppointPopState extends State<MyAppointPop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child:  Stack(
              children: [
                Positioned(
                left: 0,
                top: -17,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 205,
                  decoration: const ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF742BBA), Color(0xFFB96CFF)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(2, 3),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
                const Positioned(
                left: 28,
                top: 77,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'My \nAppointments',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: width * 0.10,
                top: height * 0.50,
                child: Container(
                  width: width * 0.8,
                  height: height * 0.14,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: width * 0.8,
                          height: height * 0.14,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows:  const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 0),
                                spreadRadius: 2,
                              )
                            ],
                            
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: width * 0.8,
                          height: 38,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: width * 0.8,
                                  height: 38,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF7C32C1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ]
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 9,
                                child: Container(
                                  width: 289,
                                  height: 20,
                                  child:  Stack(
                                    children: [
                                      const Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Text(
                                          'Medical Request',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: width * 0.55,
                                        top: height*0.005,
                                        child: Container(
                                          width: width * 0.14,
                                          height: height *0.03,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: width * 0.14,
                                                  height: height *0.025,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15),

                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: width*0.035,
                                                top: height*0.005,
                                                child: Text(
                                                  '07/10',
                                                  style: TextStyle(
                                                    color: Color(0xFF7A30C0),
                                                    fontSize: 10,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      )
                                    ],
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 22,
                        top: 47,
                        child: Text(
                          'Time: 09:00 AM',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 22,
                        top: 68,
                        child: Text(
                          'Number: ',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 80,
                        top: 69,
                        child: Text(
                          '15 ',
                          style: TextStyle(
                            color: Color(0xFF333333),
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

              Positioned(
                left: width * 0.10,
                top: height * 0.32,
                child: Container(
                  width: width * 0.8,
                  height: height * 0.14,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: width * 0.8,
                          height: height * 0.14,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows:  const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 0),
                                spreadRadius: 2,
                              )
                            ],
                            
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: width * 0.8,
                          height: 38,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: width * 0.8,
                                  height: 38,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF7C32C1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ]
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 9,
                                child: Container(
                                  width: 289,
                                  height: 20,
                                  child:  Stack(
                                    children: [
                                      const Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Text(
                                          'EC Request',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: width * 0.55,
                                        top: height*0.005,
                                        child: Container(
                                          width: width * 0.14,
                                          height: height *0.03,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: width * 0.14,
                                                  height: height *0.025,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15),

                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: width*0.035,
                                                top: height*0.005,
                                                child: Text(
                                                  '07/10',
                                                  style: TextStyle(
                                                    color: Color(0xFF7A30C0),
                                                    fontSize: 10,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      )
                                    ],
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 22,
                        top: 47,
                        child: Text(
                          'Subject : Computer Networks',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 22,
                        top: 68,
                        child: Text(
                          'Status: ',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 80,
                        top: 69,
                        child: Text(
                          'Reject ',
                          style: TextStyle(
                            color: Color(0xFFF95656),
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


              Positioned(
                left: width*0.1,
                top: height*0.67,
                child: Container(
                  width: width*0.8,
                  height: height*0.3,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: width*0.8,
                          height: height*0.3,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0xFFB96CFF),
                                blurRadius: 4,
                                offset: Offset(0, 0),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.3,
                        top: height*0.02,
                        child: const Text(
                          'EC Request',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),


                      Positioned(
                        left: width*0.058,
                        top: height*0.23,
                        child: Container(
                          width: width*0.3,
                          height: height*0.05,
                          child: Stack(
                            children: [
                              Positioned(
                                left: width*0,
                                top: height*0,
                                child: Container(
                                  width: width*0.3,
                                  height: height*0.05,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 0.50, color: Color(0xFF742BBA)),
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
                                left: width*0.055,
                                top: height*0.01,
                                child: SizedBox(
                                  width: width*0.2,
                                  height: height*0.03,
                                  child: const Text(
                                    'Reshedule',
                                    style: TextStyle(
                                      color: Color(0xFF742BBA),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),


                      Positioned(
                        left: width*0.45,
                        top: height*0.23,
                        child: Container(
                          width: width*0.3,
                          height: height*0.05,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: width*0.3,
                                  height: height*0.05,
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
                                left: width*0.08,
                                top: height*0.01,
                                child: SizedBox(
                                  width: width*0.2,
                                  height: height*0.03,
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
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
              )

              ],
            ),
          )
        ],
      ),
    );
  }
}