import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medix/authentication/auth_page.dart';
import 'package:medix/pages/dashboard_page.dart';
import 'package:medix/pages/drawer_page.dart';
import 'package:medix/widgets/date_picker_card.dart';

class EcApproval extends StatefulWidget {
  // const EcApproval({super.key});
  final User user;
  EcApproval({required this.user});

  @override
  State<EcApproval> createState() => _EcApprovalState();
}

class _EcApprovalState extends State<EcApproval> {
  TextEditingController ECNameController = TextEditingController();
  TextEditingController ECBatchController = TextEditingController();
  TextEditingController ECIdController = TextEditingController();
  TextEditingController ECSubjectController = TextEditingController();
  TextEditingController ECFacultyController = TextEditingController();

  CollectionReference ecApproval =
      FirebaseFirestore.instance.collection('ecApproval');

  final List<int> dates = List.generate(31, (index) => index + 1);
  int selectedDate = 1;
  String selectedMonth = 'January'; // Initially set to January

  // List of months
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    final User user = widget.user;
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

              Positioned(
                left: 40,
                top: 70,
                child: Text(
                  'EC Approval',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
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
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  elevation: 0,
                ),
              ),

              // Positioned(
              //   left: 10,
              //   top: 20,
              //   child: IconButton(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     icon: Icon(
              //       Icons.arrow_back_ios,
              //       color: Colors.white,
              //       size: 30,
              //     ),
              //   ),
              // ),

              //white big container
              Positioned(
                left: devWidth / 12 * 1,
                top: 128,
                child: Container(
                  width: devWidth / 12 * 10,
                  height: devHeight / 7 * 5.1,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27),
                    ),
                    shadows: const [
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
                        top: 38,
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
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 9,
                                        offset: Offset(1, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: ECNameController,
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
                      Positioned(
                        left: 20,
                        top: 95,
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
                        top: 115,
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
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 9,
                                        offset: Offset(1, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: ECBatchController,
                                    decoration: InputDecoration(
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
                      Positioned(
                        left: 20,
                        top: 177,
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
                        top: 199,
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
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 9,
                                        offset: Offset(1, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: ECIdController,
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
                      Positioned(
                        left: 20,
                        top: 260,
                        child: Text(
                          'Subject',
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
                        top: 282,
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
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 9,
                                        offset: Offset(1, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: ECSubjectController,
                                    decoration: InputDecoration(
                                      hintText: '     Enter Subject Name',
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
                        top: 343,
                        child: Text(
                          'Faculty',
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
                        top: 365,
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
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 9,
                                        offset: Offset(1, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: ECFacultyController,
                                    decoration: InputDecoration(
                                      hintText: '     Enter Your Faculty',
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
                        top: 440,
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
                        right: 45,
                        top: 420,
                        child: DropdownButton<String>(
                          value: selectedMonth,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedMonth = newValue!;
                            });
                          },
                          items: months
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        // Text(
                        //   'September 2023',
                        //   style: TextStyle(
                        //     color: Colors.purple,
                        //     fontSize: 10,
                        //     fontFamily: 'Montserrat',
                        //     fontWeight: FontWeight.w500,
                        //   ),
                        // ),
                      ),
                      Positioned(
                        left: 10,
                        top: 465,
                        child: SizedBox(
                          height: 70,
                          width: devWidth / 12 * 9.5,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(
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
                              // DatePickerCard(datetext: '02\nsep'),
                              // DatePickerCard(datetext: '03\nsep'),
                              // DatePickerCard(datetext: '04\nsep'),
                              // DatePickerCard(datetext: '05\nsep'),
                              // DatePickerCard(datetext: '06\nsep'),
                              // DatePickerCard(datetext: '07\nsep'),
                              // DatePickerCard(datetext: '08\nsep'),
                              // DatePickerCard(datetext: '09\nsep'),
                              // DatePickerCard(datetext: '10\nsep'),
                              // DatePickerCard(datetext: '11\nsep'),
                              // DatePickerCard(datetext: '12\nsep'),
                              // DatePickerCard(datetext: '13\nsep'),
                              // DatePickerCard(datetext: '14\nsep'),
                              // DatePickerCard(datetext: '15\nsep'),
                              // DatePickerCard(datetext: '16\nsep'),
                              // DatePickerCard(datetext: '17\nsep'),
                              // DatePickerCard(datetext: '18\nsep'),
                              // DatePickerCard(datetext: '19\nsep'),
                              // DatePickerCard(datetext: '20\nsep'),
                              // DatePickerCard(datetext: '21\nsep'),
                              // DatePickerCard(datetext: '22\nsep'),
                              // DatePickerCard(datetext: '23\nsep'),
                              // DatePickerCard(datetext: '24\nsep'),
                              // DatePickerCard(datetext: '25\nsep'),
                              // DatePickerCard(datetext: '26\nsep'),
                              // DatePickerCard(datetext: '27\nsep'),
                              // DatePickerCard(datetext: '28\nsep'),
                              // DatePickerCard(datetext: '29\nsep'),
                              // DatePickerCard(datetext: '30\nsep'),
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
                    //   MaterialPageRoute(builder: (context) => EcApproval()),
                    // );
                    ecApproval
                        .doc(user.email)
                        .collection('UserECAppointment')
                        .doc()
                        .set({
                          'Name': ECNameController.text,
                          'Batch': ECBatchController.text,
                          'Index': ECIdController.text,
                          'Subject': ECSubjectController.text,
                          'Faculty': ECFacultyController.text,
                          'Date': selectedDate.toString(),
                          'Month': selectedMonth.toString(),
                        })
                        .then((value) => print("EC added"))
                        .catchError(
                            (error) => print("Failed to add EC: $error"));
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
                                colors: const [
                                  Color(0xFF742BBA),
                                  Color(0xFFB96CFF)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              shadows: const [
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
