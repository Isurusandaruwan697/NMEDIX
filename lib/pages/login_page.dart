import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medix/auth/auth_service.dart';
import 'package:medix/pages/tearms_page.dart';
import 'package:medix/test.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthService _authService = AuthService();

  // void signIn() async {
  //   // try {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: usernameController.text,
  //     password: passwordController.text,
  //   );
  //   // } on FirebaseAuthException catch (e) {
  //   //   if (e.code == 'user-not-found') {
  //   //     return ScaffoldMessenger.of(context).showSnackBar(
  //   //       SnackBar(
  //   //         content: Text('No user found for that Username.'),
  //   //       ),
  //   //     );
  //   //   } else if (e.code == 'wrong-password') {
  //   //     return ScaffoldMessenger.of(context).showSnackBar(
  //   //       SnackBar(
  //   //         content: Text('Wrong password provided for that user.'),
  //   //       ),
  //   //     );
  //   //   }
  //   // }
  // }

  // @override
  // void dispose() {
  //   usernameController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    bool passwordVisible = false;

    final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  height: devHeight * 0.4,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0.00, 1.00),
                      colors: [Color(0xFF742BBA), Color(0xFFB96CFF)],
                    ),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 40,
                        top: 80,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 120,
                        child: Image.asset(
                          "assets/logindoc.png",
                          height: devHeight * 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                left: 32,
                top: devHeight * 0.47,
                child: const Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: devHeight * 0.51,
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 330,
                          height: 50,
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
                          child: TextFormField(
                            // validator: (text) {
                            //   if (text == null || text.isEmpty) {
                            //     return 'Username is empty';
                            //   }
                            //   return null;
                            // },
                            controller: usernameController,
                            decoration: const InputDecoration(
                              hintText: '     Enter Your Username',
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
                left: 32,
                top: devHeight * 0.62,
                child: const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: devHeight * 0.66,
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 330,
                          height: 50,
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
                          child: TextFormField(
                            // validator: (text) {
                            //   if (text == null || text.isEmpty) {
                            //     return 'Password is empty';
                            //   }
                            //   return null;
                            // },
                            controller: passwordController,
                            obscureText: !passwordVisible,
                            decoration: InputDecoration(
                              hintText: '     Enter Your Password',
                              hintStyle: const TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                              border: InputBorder.none,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    passwordVisible =
                                        !passwordVisible; // Toggle password visibility
                                  });
                                },
                                child: Icon(
                                  passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                left: devWidth * 0.5 - 80,
                top: devHeight * 0.88,
                child: GestureDetector(
                  onTap: () async {
                    // if (_formKey.currentState!.validate()) {
                    //   print("Validation is done");
                    // }

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const TearmsPage()),
                    // );

                    // signIn();

                    // AuthService().signInWithEmailAndPassword(
                    //   usernameController.text,
                    //   passwordController.text,
                    // );
                    User? user = await _authService.signInWithEmailAndPassword(
                        usernameController.text, passwordController.text);
                    if (user != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TearmsPage(user: user),
                        ),
                      );
                    }
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
                          left: 55,
                          top: 14,
                          child: Text(
                            'LOGIN',
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
