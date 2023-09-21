// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class RecordsScreen extends StatelessWidget {
//   final User user;
//   RecordsScreen({required this.user});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Records for $user'),
//       ),
//       body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
//         stream: FirebaseFirestore.instance
//             .collection('ecApproval')
//             .where('user.email', isEqualTo: user) // Filter by user's email
//             .get()
//             .asStream(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             print("Loading");
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             print("Error");
//             return Text('Error: ${snapshot.error}');
//           } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             print("No records found");
//             return Text('No records found for $user.');
//           } else {
//             final records = snapshot.data!.docs;

//             return ListView.builder(
//               itemCount: records.length,
//               itemBuilder: (context, index) {
//                 final record = records[index].data() as Map<String, dynamic>;
//                 return ListTile(
//                   title: Text(record['Name'] ?? ''),
//                   subtitle: Text(
//                       'Date: ${record['Date']}, Subject: ${record['Subject']}'),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecordsScreen extends StatelessWidget {
  final User userEmail;

  RecordsScreen({required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Records for $userEmail'),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection('ecCollection')
            .doc(userEmail.uid)
            .collection('autoID')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final records = snapshot.data!.docs;
            if (records.isEmpty) {
              return Text('No records found for $userEmail.');
            }

            return ListView.builder(
              itemCount: records.length,
              itemBuilder: (context, index) {
                final record = records[index].data() as Map<String, dynamic>;
                return ListTile(
                  title: Text(record['name'] ?? ''),
                  subtitle:
                      Text('Date: ${record['date']}, Time: ${record['time']}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
