import 'package:flutter/material.dart';

class Facebook_page extends StatefulWidget {
  const Facebook_page({Key? key}) : super(key: key);

  @override
  State<Facebook_page> createState() => _Facebook_pageState();
}

class _Facebook_pageState extends State<Facebook_page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Facebook',
        ),
      ),
    );
  }
}
