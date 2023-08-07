import 'package:flutter/material.dart';
import 'package:medix/pages/start_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
   
  State<SplashPage> createState() => _splashState();}

 class _splashState extends State<SplashPage> {
@override
void initState(){
  super.initState();
  _navigate();
}

_navigate()async{
  await Future.delayed(Duration(milliseconds: 4800),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>start()));
}

  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                child: Image.asset("assets/logo.jpg", width: devWidth * 0.7),
              ),
            ],
          ),
          SizedBox(height:95),
          const Text("Powerd by"),
          Image.asset("assets/nsbm logo.jpg", width: devWidth * 0.5,height: 45),
        ],
      ),
    );
  }
}
