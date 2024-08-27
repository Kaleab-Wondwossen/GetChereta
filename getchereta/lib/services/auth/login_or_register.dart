import 'package:flutter/material.dart';
import 'package:getchereta/screens/login_screen.dart';
import 'package:getchereta/screens/signup_screen.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        ontap: togglePages,
      );
    }
    return SignUpScreen(
      ontap: togglePages,
    );
  }
}
