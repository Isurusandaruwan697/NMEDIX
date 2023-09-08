import 'package:flutter/material.dart';

import 'dashboard_page.dart';

class MedicalApproval extends StatefulWidget {
  const MedicalApproval({super.key});

  @override
  State<MedicalApproval> createState() => _MedicalApprovalState();
}

class _MedicalApprovalState extends State<MedicalApproval> {
  @override
  Widget build(BuildContext context) {
     final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container( 
       width: devWidth,
        height: devHeight,
        color: Colors.white,
         child: Stack(
          children: [
            //purple back container
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: devWidth,
                height: devHeight * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0.00, 1.00),
                    colors: [Color(0xFF742BBA), Color(0xFFB96CFF)],
                  ),
                ),
              ),
            ),

            Positioned(
              left: 40,
              top: 70,
              child: Text(
                'Reserve your\nspot',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            Positioned(
              left: 10,
              top: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
    ),
    ) ;
  }
}