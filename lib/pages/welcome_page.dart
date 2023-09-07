import 'package:flutter/material.dart';

class WelcPage extends StatefulWidget {
  const WelcPage({super.key});

  @override
  State<WelcPage> createState() => _WelcPageState();
}

class _WelcPageState extends State<WelcPage> {
  @override
  Widget build(BuildContext context) {
        return  Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            
            child: Stack(
              children: [
                Positioned(
                  left: 55,
                  top: 50,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image(image:const AssetImage('logocolor.png'),
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width*0.7,),
                  ),
                ),

                const Positioned(
                left: 28,
                top: 150,
                child: Text(
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

              const Positioned(
                left: 28,
                top: 200,
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
                          width: MediaQuery.of(context).size.width*0.7,
                          height: MediaQuery.of(context).size.height*0.65,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("doctor.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
          
              Positioned(
                  left: 15,
                  top: 352,
                    child: Align(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        height: 250,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.8,
                                    height: 250,
                                    decoration: ShapeDecoration(
                                    color: Colors.white.withOpacity(0.8400000143051147),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0xB2B96CFF),
                          blurRadius: 4,
                          offset: Offset(0, 0),
                          spreadRadius: 4,
                        )
                      ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 35,
                                    child: Container(
                                      width: 235,
                                      height: 165,
                                      child: const Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 75,
                          child: Text(
                            'Step 2: Schedule  appointments with just a \nfew taps. our health, your way.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: SizedBox(
                            width: 259,
                            child: Text(
                              "Step 1: Log  in to  your account  using  your username and set a password. It's your key to better care!",
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
                          top: 135,
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
        ),

              

              ],
            ),
            
            ),
            
            
        ],
      ),
      
    );
  }
}