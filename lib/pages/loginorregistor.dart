import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:modernlogintute/pages/register_page.dart';

class LoginOrRegistor extends StatefulWidget {
  const LoginOrRegistor({super.key});

  @override
  State<LoginOrRegistor> createState() => _LoginOrRegistorState();
}

class _LoginOrRegistorState extends State<LoginOrRegistor> {
  //initialy show login page
  bool showLoginPage = true;

  // toggle between login or registor page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
