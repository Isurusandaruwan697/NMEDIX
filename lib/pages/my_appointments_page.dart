import 'package:flutter/material.dart';
import 'package:medix/pages/start_page.dart';


class MyAppoint extends StatefulWidget {
  const MyAppoint({super.key});

  @override
  State<MyAppoint> createState() => _MyAppointState();
}

class _MyAppointState extends State<MyAppoint> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
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
                  height: height * 0.12,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: width * 0.8,
                          height: height * 0.12,
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
                                        top: 0,
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
                                                  height: height *0.03,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15),

                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                left: 10,
                                                top: 4,
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
                      )

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