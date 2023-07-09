import 'package:flutter/material.dart';

import 'SignUpScreen.dart';
import 'loginScreen.dart';
void main() {
  runApp(My());
}
class My extends StatefulWidget {
  const My({super.key});

  @override
  State<My> createState() => _MyState();
}

class _MyState extends State<My> {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginScreen(),
      home: SignUpScreen(),
    );
  }
