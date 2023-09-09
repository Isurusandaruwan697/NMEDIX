import 'package:flutter/material.dart';
import 'package:medix/pages/start_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _splashState();
}

class _splashState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  _navigate() async {
    await Future.delayed(const Duration(milliseconds: 4800), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const start()));
  }

  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 280, 0, 20),
                child: Image.asset("assets/logo.jpg", width: devWidth * 0.7),
              ),
            ],
          ),
          // const SizedBox(height: 95),
          SizedBox(
              child: Column(
            children: [
              const Text(
                "Powerd by",
                style: TextStyle(
                    color: Color.fromARGB(255, 111, 107, 107),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              Image.asset("assets/nsbm logo.jpg", width: devWidth * 0.3),
              const SizedBox(height: 15),
            ],
          )),
        ],
      ),
    );
  }
}
