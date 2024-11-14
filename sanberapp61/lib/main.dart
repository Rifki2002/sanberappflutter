import 'package:flutter/material.dart';
import 'package:sanberapp61/pages/get_started.dart';
import 'package:sanberapp61/pages/kuis2.dart';
import 'package:sanberapp61/pages/login_page.dart';
import 'package:sanberapp61/pages/register_page.dart';
import 'package:sanberapp61/user/page/user_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: RegisterPage(),
    );
  }
}
