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
                  top: 50,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image(image:const AssetImage('logocolor.png'),
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width*0.7,),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}