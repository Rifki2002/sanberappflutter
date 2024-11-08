import 'package:flutter/material.dart';
import 'package:sanberapp61/pages/get_started.dart';
import 'package:sanberapp61/pages/home_page.dart';
import 'package:sanberapp61/pages/news_page.dart';

void main() {
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
      home: const NewsPage(),
    );
  }
}
