import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_netflix/pages/home_page.dart';
import 'dart:async';

class MyloadingPage extends StatefulWidget {
  const MyloadingPage({super.key, required this.title});

  final String title;

  @override
  State<MyloadingPage> createState() => MyloadingPageState();
}

class MyloadingPageState extends State<MyloadingPage> {
  @override
  void initState() {
    super.initState();
    loadAnimation();
  }

  Future<Timer> loadAnimation() async {
    return Timer(const Duration(seconds: 3), onLoaded);
  }

  onLoaded() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const MyHomePage(title: "Home Page"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset("assets/lotties/netflix.json", repeat: false),
      ),
    );
  }
}
