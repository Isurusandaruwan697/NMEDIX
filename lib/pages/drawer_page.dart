import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medix/pages/article_page.dart';
import 'package:medix/pages/dashboard_page.dart';
import 'package:medix/pages/ec_approval_page.dart';
import 'package:medix/pages/medicalappro_screen.dart';
import 'package:medix/pages/userprofile.dart';

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
            accountEmail: Text("Faulty"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/feedback.png'),
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFB96CFF),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
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
            leading: Icon(Icons.home),
            title: Text("Dashboard"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard(user: user)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.approval),
            title: Text("EC Approval"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EcApproval(user: user)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information),
            title: Text("Medical Approval"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MedicalApproval(user: user)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text("Artical"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Article()),
              );
            },
          ),
        ],
      ),
    );
  }
}
