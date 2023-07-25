import 'package:flutter/material.dart';
import 'package:tinder/view/components/background_gradient.dart';
import 'package:tinder/view/components/rich_text_login.dart';
import 'package:tinder/view/components/sign_in_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundGradient(),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', width: 180),
                const SizedBox(height: 20),
                const RichTextLogin(),
                const SizedBox(height: 35),
                SignInButton('APPLE', Icons.apple),
                const SizedBox(height: 10),
                SignInButton('FACEBOOK', Icons.facebook_rounded),
                const SizedBox(height: 10),
                SignInButton('PHONE NUMBER', Icons.phone),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Trouble Signing In?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
