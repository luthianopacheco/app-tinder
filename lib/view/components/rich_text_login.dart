import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tinder/controller/url_launch.dart';

class RichTextLogin extends StatelessWidget {
  const RichTextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: RichText(
        text: TextSpan(style: const TextStyle(fontSize: 13), children: [
          const TextSpan(
              text: 'By tapping Create Account or Sign In, you agree to our '),
          TextSpan(
            text: 'Terms',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await UrlLaunch().launchURL(
                  Uri.parse(
                      'https://policies.tinder.com/terms/intl/en/?lang=en'),
                );
              },
          ),
          const TextSpan(text: '. Learn how we process your data in our '),
          TextSpan(
            text: 'Privacy Policy ',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await UrlLaunch().launchURL(
                  Uri.parse(
                      'https://policies.tinder.com/privacy/intl/en/?lang=en'),
                );
              },
          ),
          const TextSpan(text: 'and '),
          TextSpan(
            text: 'Cookies Policy',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await UrlLaunch().launchURL(
                  Uri.parse(
                      'https://policies.tinder.com/cookie-policy/intl/en/?lang=en'),
                );
              },
          ),
          const TextSpan(text: '.'),
        ]),
        textAlign: TextAlign.center,
      ),
    );
  }
}
