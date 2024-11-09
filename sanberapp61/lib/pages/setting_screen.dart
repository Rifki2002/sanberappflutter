import 'package:flutter/material.dart';

import 'get_started.dart';

class SettingScreen extends StatelessWidget {
  final VoidCallback onLogout;

  SettingScreen({required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => GetStarted()),
            (route) => false,
          );
        },
        child: Text("Logout"),
      ),
    );
  }
}
