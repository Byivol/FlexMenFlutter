import 'package:flutter/material.dart';

class Coaching extends StatefulWidget {
  const Coaching({super.key});

  @override
  State<Coaching> createState() => _CoachingState();
}

class _CoachingState extends State<Coaching> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: -1,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text('Личный кабинет', style: TextStyle(fontSize: 20)),
          leadingWidth: 100,
          leading: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Закрыть',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)))),
          centerTitle: true,
        ),
      ),
    );
  }
}
