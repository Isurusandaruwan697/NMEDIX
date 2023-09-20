import 'package:flutter/material.dart';
import 'package:medix/pages/ec_appoinmntlist_page.dart';
import 'package:medix/pages/medical_Appoinmentlist_page.dart';

class MyAppoint extends StatefulWidget {
  const MyAppoint({super.key});

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
                    const Positioned(
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
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
                        icon: const Icon(
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
                child: const TabBar(
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

              const SizedBox(
                height: 20,
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    ECAppoinmntWidget(),
                    MedicalAppoinmntWidget(),
                  ],
                ),
              ),

              // Text('Hello, ${user.email}!'),
            ],
          ),
        ),
      ),
    );
  }
}
