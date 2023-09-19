import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medix/firebase_options.dart';
import 'package:medix/pages/feedback_page.dart';
import 'package:medix/pages/my_appointments_page.dart';
import 'package:medix/pages/splash_page.dart';
import 'package:medix/pages/userprofile.dart';
import 'package:medix/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
