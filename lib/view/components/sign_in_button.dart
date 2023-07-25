import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignInButton extends StatefulWidget {
  String socialMediaText;
  IconData socialMediaIcon;
  SignInButton(this.socialMediaText, this.socialMediaIcon, {super.key});

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white, width: 1.5),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(widget.socialMediaIcon),
              Text(
                'SIGN IN WITH ${widget.socialMediaText}',
                style:
                    TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
