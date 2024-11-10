import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/login_page.dart';
import 'package:food_delivery_app/pages/registor_page.dart';

class LoginOrRegistor extends StatefulWidget {
  const LoginOrRegistor({super.key});

  @override
  State<LoginOrRegistor> createState() => _LoginOrRegistorState();
}

class _LoginOrRegistorState extends State<LoginOrRegistor> {
  // initially , show login page
  bool showLoginPage = true;
  // toggle b/w login and registor page

  void togglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePage,
      );
    } else {
      return RegistorPage(
        onTap: togglePage,
      );
    }
  }
}
