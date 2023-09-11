import 'package:flutter/material.dart';

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
                  left: width *0.15,
                  top: height *0.08,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image(image:const AssetImage('logocolor.png'),
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width*0.7,),
                  ),
                ),

                Positioned(
                  left: width * 0.08,
                  top: height *0.25,
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
                left: width *0.08,
                top: height *0.3,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}