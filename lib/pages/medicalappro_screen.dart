import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medix/authentication/auth_page.dart';
import 'package:medix/pages/drawer_page.dart';
import 'package:medix/widgets/date_picker_card.dart';
import 'package:medix/widgets/time_picker_card.dart';
import 'dashboard_page.dart';
// import 'package:nmedix/widgets/date_picker_card.dart';
// import 'package:nmedix/widgets/time_picker_card.dart';

class MedicalApproval extends StatefulWidget {
  // const MedicalApproval({super.key});
  final User user;
  MedicalApproval({required this.user});

  @override
  State<MedicalApproval> createState() => _MedicalApprovalState();
}

class _MedicalApprovalState extends State<MedicalApproval> {
  TextEditingController MediNameController = TextEditingController();
  TextEditingController MediIndexController = TextEditingController();
  TextEditingController MediPerceptionController = TextEditingController();
  TextEditingController MediStatusController = TextEditingController();

  CollectionReference mediAppoinment =
      FirebaseFirestore.instance.collection('mediAppoinment');

  final List<int> dates = List.generate(31, (index) => index + 1);
  int selectedDate = 1;
  String selectedTime = '9.00';

  final List<String> times = [
    '9.00',
    '09.30',
    '10.00',
    '10.30',
    '11.00',
    '11.30',
    '12.00',
    '12.30',
    '13.00',
    '14.00',
    '14.30',
    '15.00',
    '15.30',
    '16.00',
    '16.30',
  ];

  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: Drower(user: user),
      body: SingleChildScrollView(
        child: Container(
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
                      colors: [
                        Color(0xFF742BBA),
                        Color.fromARGB(255, 193, 127, 255)
                      ],
                    ),
                  ),
                ),
              ),

              //back button
              Positioned(
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  elevation: 0,
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

              //white big container
              Positioned(
                left: devWidth / 12 * 1,
                top: 170,
                child: Container(
                  width: devWidth / 12 * 10,
                  height: devHeight / 7 * 4.6,
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
                  //name textfield section
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 18,
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
                        top: 40,
                        child: Container(
                          width: 306,
                          height: 44,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: devWidth / 12 * 8.8,
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
                                    controller: MediNameController,
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
                      //Index textfield section

                      Positioned(
                        left: 20,
                        top: 95,
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
                        top: 117,
                        child: Container(
                          width: 306,
                          height: 44,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: devWidth / 12 * 8.8,
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
                                    controller: MediIndexController,
                                    decoration: InputDecoration(
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
                      //Perception number textfield section

                      Positioned(
                        left: 20,
                        top: 177,
                        child: Text(
                          'Perception Number',
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
                        top: 201,
                        child: Container(
                          width: 306,
                          height: 44,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: devWidth / 12 * 8.8,
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
                                    controller: MediPerceptionController,
                                    decoration: InputDecoration(
                                      hintText:
                                          '     Enter Your Perception Number',
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
                      Positioned(
                        left: 20,
                        top: 260,
                        child: Text(
                          'Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 45,
                        top: 280,
                        child: Text(
                          'September 2023',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      // date picker
                      Positioned(
                        left: 10,
                        top: 285,
                        child: SizedBox(
                          height: 70,
                          width: devWidth / 12 * 9.5,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 10),
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: dates.length,
                                itemBuilder: (context, index) {
                                  final currentdate = dates[index];
                                  // Customize how you want to display each item.
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            selectedDate = dates[index];
                                          });

                                          print(selectedDate);
                                        },
                                        child: Text(
                                          dates[index].toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  );
                                  //  DatePickerCard(
                                  //   currentdate: currentdate,
                                  // );
                                },
                              ),

                              // DatePickerCard(datetext: '01\nsep'),

                              // Padding(
                              //   padding:
                              //       const EdgeInsets.symmetric(horizontal: 4.0),
                              //   child: ElevatedButton(
                              //     style: ElevatedButton.styleFrom(
                              //       backgroundColor:
                              //           Theme.of(context).highlightColor,
                              //       shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(12.0),
                              //       ),
                              //     ),
                              //     onPressed: () {},
                              //     child: const Text(
                              //       '32\nsep',
                              //       textAlign: TextAlign.center,
                              //       style: TextStyle(color: Colors.white),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),

                      //time picker
                      Positioned(
                        left: 10,
                        top: 350,
                        child: SizedBox(
                          height: 40,
                          width: devWidth / 12 * 9.5,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 10),
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: times.length,
                                itemBuilder: (context, index) {
                                  final currenttime = times[index];
                                  // Customize how you want to display each item.
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          selectedTime = times[index];
                                        });

                                        print(selectedTime);
                                      },
                                      child: Text(
                                        times[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  );
                                  // TimePickerCard();
                                },
                              ),
                              // TimePickerCard(),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 405,
                        child: Text(
                          'Status',
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
                        top: 430,
                        child: Container(
                          width: 306,
                          height: 44,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: devWidth / 12 * 8.8,
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
                                    controller: MediStatusController,
                                    decoration: InputDecoration(
                                      hintText: '     Tell about your illness',
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
                top: devHeight / 7 * 5.1 + 128 + 20,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MedicalApproval()),
                    // );
                    mediAppoinment
                        .add({
                          'Name': MediNameController.text,
                          'Index': MediIndexController.text,
                          'Perception No': MediPerceptionController.text,
                          'Status': MediStatusController.text,
                          'Date': selectedDate.toString(),
                          'Time': selectedTime.toString(),
                        })
                        .then((value) => print("MediAppoinment added"))
                        .catchError((error) =>
                            print("Failed to add MediAppoinment: $error"));
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
      ),
    );
  }
}
