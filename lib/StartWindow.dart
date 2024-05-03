// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'Привет,\n',
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 90,
                            color: Colors.white)),
                    TextSpan(
                        text: 'FLEX ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 70,
                            color: Colors.white)),
                    TextSpan(
                        text: 'boy',
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 60,
                            color: Colors.white))
                  ]),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
