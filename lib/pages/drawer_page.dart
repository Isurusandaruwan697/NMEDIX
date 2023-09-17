import 'package:flutter/material.dart';

class Drower extends StatelessWidget {
  Drower({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Name"),
            accountEmail: Text("Faulty"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/feedback.png'),
            ),
            decoration: BoxDecoration(
              color: Color(0xFFB96CFF),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Drower()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Dashboard"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Drower()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.approval),
            title: Text("EC Approval"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Drower()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information),
            title: Text("Medical Approval"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Drower()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text("Artical"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Drower()),
              );
            },
          ),
        ],
      ),
    );
  }
}
