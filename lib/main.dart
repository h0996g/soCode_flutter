import 'package:flutter/material.dart';
import 'package:socode_flutter/5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleLoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
