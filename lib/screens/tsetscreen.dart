// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:medix/auth/auth_service.dart';

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.active) {
//           final user = snapshot.data;
//           if (user != null) {
//             return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
//               future: FirebaseFirestore.instance
//                   .collection('users')
//                   .doc(user.uid)
//                   .get(),
//               builder: (context, userSnapshot) {
//                 if (userSnapshot.connectionState == ConnectionState.done) {
//                   final userData = userSnapshot.data?.data();
//                   if (userData != null) {
//                     final userModel =
//                         UserModel(uid: user.uid, name: userData['name']);
//                     return Text('Hello, ${userModel.name}!');
//                   }
//                 }
//                 return CircularProgressIndicator(); // Loading indicator
//               },
//             );
//           } else {
//             // User is not authenticated, you can handle this case as needed
//             return Text('Not authenticated');
//           }
//         }
//         return CircularProgressIndicator(); // Loading indicator
//       },
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Hello, ${user.email}!'), // Assuming you have set the display name
            // Add other profile information here
          ],
        ),
      ),
    );
  }
}
