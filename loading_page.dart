import 'dart:async';
import 'package:flutter/material.dart';
import 'package:money_tracking/pages/register.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // Delay pengalihan ke halaman register selama 3 detik
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RegisterPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tambahkan logo di sini
            Image.asset('assets/images/logo.png', width: 300, height: 300),

            CircularProgressIndicator(), // Tambahkan indicator loading jika diperlukan
          ],
        ),
      ),
    );
  }
}
