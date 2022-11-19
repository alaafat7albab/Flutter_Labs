import 'package:flutter/material.dart';
import 'package:flutter_labs/contacts_Screen.dart';
import 'package:flutter_labs/counter_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'messenger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
