import 'package:flutter/material.dart';
import 'package:medix/pages/login_page.dart';
import 'package:medix/pages/welcome_page.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: devWidth,
        height: devHeight,
        color: Colors.white,
        child: Stack(children: [
          //purple back container
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: devWidth,
              height: devHeight * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0.00, 1.00),
                  colors: [
                    Color.fromARGB(255, 236, 221, 250),
                    Color.fromARGB(255, 214, 177, 248)
                    //  Color.fromARGB(255, 187, 146, 226),
                    // Color(0xFFB96CFF)
                  ],
                ),
              ),
            ),
          ),

          //const Image(image: AssetImage('images/logo.png')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Image.asset(
              'assets/logocolor.png',
              width: 400,
              height: 300,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/intro.png',
              width: 400,
              height: 800,
            ),
          ),

          Expanded(
            flex: 1,
            child: SizedBox(
              height: 750,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Center(
                    child: Text("NSBM Medical Assistant",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(9.0),
                  ),
                  const Center(
                    child: Text("Make your EC and Medical Appointment at",
                        style: TextStyle(fontSize: 15)),
                  ),
                  const Center(
                    child: Text("one place without wasting time",
                        style: TextStyle(fontSize: 15)),
                  ),
                  const Center(
                    child: Text("on lecture!", style: TextStyle(fontSize: 15)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                  ),

                  GestureDetector(
                    onTap: () {
                      print('vliiol');

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WelcPage()));
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
                                    blurRadius: 13,
                                    offset: Offset(0, 0),
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 55,
                            top: 14,
                            child: Text(
                              'START',
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
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Add your button click logic here
                  //     print('Button clicked!');
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const start()));
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(20.0)),
                  //       backgroundColor: Colors.purple),
                  //   child: const Text('START', style: TextStyle(fontSize: 20)),
                  // ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
