import 'package:flutter/material.dart';

class HomePageCardSmall extends StatelessWidget {
  const HomePageCardSmall({
    super.key,
    required this.devWidth,
    required this.devHeight,
    required this.title,
    required this.sizeboxWidth,
    required this.imgUrl,
  });

  final double devWidth;
  final double devHeight;
  final String imgUrl;
  final String title;
  final double sizeboxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: devWidth * 0.4,
      height: (devHeight * 0.4) / 3,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 100,
                  height: 15,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFB96CFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(13),
                        bottomLeft: Radius.circular(13),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                )),
            Positioned(
              top: (devHeight * 0.4) / 8,
              left: devWidth * 0.4 / 9,
              child: Row(
                children: [
                  Image.asset(
                    imgUrl,
                    // 'assets/mreq.png',
                    height: devWidth * 0.095,
                  ),
                  SizedBox(width: sizeboxWidth),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
