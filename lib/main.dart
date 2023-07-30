import 'package:flutter/material.dart';
import 'package:players_bank_redesign/pages/login_first_page.dart';
import 'package:players_bank_redesign/shared/app_colors.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.grey,
      ),
      home: const LoginFirstPage(),
    );
  }
}
