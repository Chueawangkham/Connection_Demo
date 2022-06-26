import 'package:connectionapp/login/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ConnectionApp());

class ConnectionApp extends StatelessWidget {
  const ConnectionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), //กำหนดคุณสมบัติ *Properties
    );
  }
}
