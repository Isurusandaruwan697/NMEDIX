import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medix/pages/article_page.dart';
import 'package:medix/pages/dashboard_page.dart';
import 'package:medix/pages/ec_approval_page.dart';
import 'package:medix/pages/medicalappro_screen.dart';
import 'package:medix/pages/my_appointments_page.dart';
import 'package:medix/pages/userprofile.dart';
import 'package:medix/test.dart';

class Drower extends StatelessWidget {
  // Drower({super.key});

  final User user;
  Drower({required this.user});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(user.email.toString()),
            accountEmail: const Text("Faulty"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/feedback.png'),
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFB96CFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => userprofile(
                          user: user,
                        )),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Dashboard"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard(user: user)),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.approval),
            title: const Text("EC Approval"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EcApproval(user: user)),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.medical_information),
            title: const Text("Medical Approval"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MedicalApproval(user: user)),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.article),
            title: const Text("Artical"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Article()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_add_outlined),
            title: const Text("Appoinments"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyAppoint()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard(user: user)),
                    );
                  },
                  child: SizedBox(
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
                        const Positioned(
                            left: 14,
                            top: 13,
                            child: Icon(Icons.logout, color: Colors.white)),
                        const Positioned(
                          left: 50,
                          top: 14,
                          child: Text(
                            'Logout',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
