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

              ],
            ),
            
            ),
            
            
        ],
      ),
      
    );
  }
}