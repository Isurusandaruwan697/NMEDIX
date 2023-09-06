import 'package:flutter/material.dart';

class DatePickerCard extends StatelessWidget {
  const DatePickerCard({
    super.key,
    required this.datetext,
  });

  final String datetext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          onPressed: () {},
          child: Text(
            datetext,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}
