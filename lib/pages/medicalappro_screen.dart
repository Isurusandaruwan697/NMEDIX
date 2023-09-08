import 'package:flutter/material.dart';

class MedicalApproval extends StatefulWidget {
  const MedicalApproval({super.key});

  @override
  State<MedicalApproval> createState() => _MedicalApprovalState();
}

class _MedicalApprovalState extends State<MedicalApproval> {
  @override
  Widget build(BuildContext context) {
     final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container( 
       width: devWidth,
        height: devHeight,
        color: Colors.white,
    ),
    ) ;
  }
}