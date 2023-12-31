import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medix/pages/dashboard_page.dart';
import 'package:medix/pages/drawer_page.dart';

class FeedbackScreen extends StatefulWidget {
  // const FeedbackScreen({super.key});

  final User user;
  FeedbackScreen({required this.user});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController batchController = TextEditingController();
  TextEditingController indexController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();

  CollectionReference feedback =
      FirebaseFirestore.instance.collection('feedback');

  @override
  Widget build(BuildContext context) {
    final user = widget.user;

    final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: Drower(user: user),
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
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0.00, 1.00),
                    colors: [
                      Color(0xFF742BBA),
                      Color.fromARGB(255, 193, 127, 255)
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                elevation: 0,
              ),
            ),
            const Positioned(
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
                    const BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Stack(
                  children: [
                    // name textfield
                    const Positioned(
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
                                    const BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 9,
                                      offset: Offset(1, 4),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: nameController,
                                  decoration: const InputDecoration(
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
                    // batch textfield
                    const Positioned(
                      left: 20,
                      top: 122,
                      child: Text(
                        'Batch',
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
                      top: 148,
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
                                    const BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 9,
                                      offset: Offset(1, 4),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: batchController,
                                  decoration: const InputDecoration(
                                    hintText: '     Enter Your Batch',
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
                    // index number textfield
                    const Positioned(
                      left: 20,
                      top: 215,
                      child: Text(
                        'Index Number',
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
                      top: 243,
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
                                    const BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 9,
                                      offset: Offset(1, 4),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: indexController,
                                  decoration: const InputDecoration(
                                    hintText: '     Enter Your Index',
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
                    // feedback textfield
                    const Positioned(
                      left: 20,
                      top: 309,
                      child: Text(
                        'Feedback',
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
                      top: 335,
                      child: Container(
                        width: 306,
                        height: 110,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 295,
                                height: 110,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  shadows: [
                                    const BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 9,
                                      offset: Offset(1, 4),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: feedbackController,
                                  decoration: const InputDecoration(
                                    hintText: '     Tell Us Your Feedback',
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FeedbackScreen()),
                  // );

                  feedback
                      .doc(user.email)
                      .collection('UserFeedbacks')
                      .doc()
                      .set({
                        'name': nameController.text,
                        'batch': batchController.text,
                        'index': indexController.text,
                        'feedback': feedbackController.text
                      })
                      .then((value) => print("Feedback added"))
                      .catchError(
                          (error) => print("Failed to add Feedback: $error"));
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
                            gradient: const LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF742BBA), Color(0xFFB96CFF)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: [
                              const BoxShadow(
                                color: Color(0x54000000),
                                blurRadius: 13,
                                offset: Offset(0, 0),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
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
