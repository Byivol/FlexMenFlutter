import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -1,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Расписание', style: TextStyle(fontSize: 20)),
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
    );
  }
}
