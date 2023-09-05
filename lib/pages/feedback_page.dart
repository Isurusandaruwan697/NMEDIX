import 'package:flutter/material.dart';
import 'package:medix/pages/dashboard_page.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
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
              top: 80,
              child: Text(
                'Give Your\nFeedback',
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

            //white big container
            Positioned(
              left: 28,
              top: 190,
              child: Container(
                width: 334,
                height: 490,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 30,
                      child: Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 55,
                      child: Container(
                        width: 306,
                        height: 44,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 295,
                                height: 44,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 9,
                                      offset: Offset(1, 4),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '     Enter Your Name',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC4C4C4),
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    border: InputBorder.none,
                                  ),
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

            //submit button
            Positioned(
              left: devWidth * 0.5 - 80,
              top: 715,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: Container(
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
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF742BBA), Color(0xFFB96CFF)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: [
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
                      Positioned(
                        left: 50,
                        top: 14,
                        child: Text(
                          'Submit',
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
            ),
          ],
        ),
      ),
    );
  }
}
