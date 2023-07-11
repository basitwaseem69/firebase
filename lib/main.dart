import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen.dart';
import 'firebase_options.dart';
import 'loginScreen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(My());
}

class My extends StatefulWidget {
  const My({super.key});

  @override
  State<My> createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginScreen(),
      // home: SignUpScreen(),
    );
  }
}
