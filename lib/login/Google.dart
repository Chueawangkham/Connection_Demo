import 'package:flutter/material.dart';

class Google_page extends StatefulWidget {
  const Google_page({Key? key}) : super(key: key);

  @override
  State<Google_page> createState() => _Google_pageState();
}

class _Google_pageState extends State<Google_page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Google',
        ),
      ),
    );
  }
}
