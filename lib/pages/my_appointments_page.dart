import 'package:flutter/material.dart';

class MyAppoint extends StatefulWidget {
  // const MyAppoint({super.key});

  // final User user;
  // MyAppoint({required this.user});

  @override
  State<MyAppoint> createState() => _MyAppointState();
}

class _MyAppointState extends State<MyAppoint> {
  @override
  Widget build(BuildContext context) {
    // final User user = widget.user;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          // endDrawer: Drower(user: user),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
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
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      // top: 77,
                      top: 55,
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
                      top: 10,
                      left: 10,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),

                    // Positioned(
                    //   left: 20,
                    //   bottom: 0,
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width * 0.9,
                    //     // Add styling for your custom TabBar here
                    //     color: Colors.transparent,
                    //     child: TabBar(
                    //       tabs: [
                    //         Tab(
                    //           icon: Icon(Icons.medical_information),
                    //           text: 'Medical Appointments',
                    //         ),
                    //         Tab(
                    //           icon: Icon(Icons.approval),
                    //           text: 'EC Appointments',
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //   left: 0,
                    //   top: 0,
                    //   child: AppBar(
                    //     backgroundColor: Colors.transparent,
                    //     leading: IconButton(
                    //         icon: Icon(Icons.arrow_back_ios),
                    //         onPressed: () {
                    //           Navigator.pop(context);
                    //         }),
                    //     elevation: 0,
                    //   ),
                    // ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                // Add styling for your custom TabBar here
                color: Colors.transparent,
                child: TabBar(
                  indicatorColor: Colors.purple,
                  labelColor: Colors.black54,
                  tabs: [
                    Tab(
                      // icon: Icon(Icons.medical_information),
                      text: 'Medical Appointments',
                    ),
                    Tab(
                      // icon: Icon(Icons.approval),
                      text: 'EC Appointments',
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Expanded(
                  child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.14,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: width * 0.9,
                              height: height * 0.14,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: const [
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
                              width: width * 0.9,
                              height: 38,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: width * 0.9,
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
                                          ]),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 9,
                                    child: Container(
                                      width: 289,
                                      height: 20,
                                      child: Stack(
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
                                            top: 0,
                                            child: Container(
                                              width: width * 0.14,
                                              height: height * 0.03,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: width * 0.14,
                                                      height: height * 0.025,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Positioned(
                                                    left: 12,
                                                    top: 3.5,
                                                    child: Text(
                                                      '07/10',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF7A30C0),
                                                        fontSize: 10,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w700,
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
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.14,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: width * 0.9,
                              height: height * 0.14,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: const [
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
                              width: width * 0.9,
                              height: 38,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: width * 0.9,
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
                                          ]),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 9,
                                    child: Container(
                                      width: 289,
                                      height: 20,
                                      child: Stack(
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
                                                height: height * 0.03,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: width * 0.14,
                                                        height: height * 0.025,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                      left: 12,
                                                      top: 3.5,
                                                      child: Text(
                                                        '07/10',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF7A30C0),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ))
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
                              'Date',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 60,
                            top: 48,
                            child: Text(
                              '07/10/2021',
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
                              'Time: ',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 60,
                            top: 69,
                            child: Text(
                              'Time: 09:00 AM ',
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
                ],
              )),

              // Text('Hello, ${user.email}!'),
            ],
          ),
        ),
      ),
    );
  }
}
