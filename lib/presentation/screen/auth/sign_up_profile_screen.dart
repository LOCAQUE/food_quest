import 'package:flutter/material.dart';

class SignUpProfile extends StatelessWidget {
  const SignUpProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'プロフィール入力画面',
            ),
          ],
        ),
      ),
    );
  }
}
