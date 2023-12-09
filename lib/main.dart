import 'package:flutter/material.dart';
import 'package:topup_application/MainPage.dart';

void main() {
  runApp(TopUpAPP());
}

class TopUpAPP extends StatelessWidget {
  const TopUpAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
