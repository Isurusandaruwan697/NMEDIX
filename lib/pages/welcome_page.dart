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
                        child: Container(
                          width: 255,
                          height: 250,
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