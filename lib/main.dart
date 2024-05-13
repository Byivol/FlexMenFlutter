import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_application_2/homewindow.dart';
import 'Screens/notifications.dart';
import 'Screens/qrcode.dart';
=======
import 'package:flutter_application_2/Home.dart';
import 'Screens/Notifications.dart';
import 'Screens/QRcode.dart';
>>>>>>> 9906483a824b4ccf188cc6aeb3e0a7fdcef641a2
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBars(),
    );
  }
}

class BottomNavigationBars extends StatefulWidget {
  const BottomNavigationBars({super.key});

  @override
  State<BottomNavigationBars> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBars> {
  Future<void> _makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '89292615056',
    );
    await launchUrl(launchUri);
  }

  int _selectedIndex = 0;
  final List<Widget> _navigationItems = [
    const HomeScreen(),
    const Text('1'),
    const Text('1'),
    const Notifications(),
    const Text('1'),
  ];
  static const List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Главная'),
    BottomNavigationBarItem(
        icon: Icon(Icons.directions_run), label: 'Мои занятия'),
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'О студии'),
    BottomNavigationBarItem(
        icon: Icon(Icons.notifications_outlined), label: 'Уведомления'),
    BottomNavigationBarItem(
        icon: Icon(Icons.format_list_bulleted), label: 'Ещё'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: -1,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Center(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                children: [
                  TextSpan(
                      text: 'THE',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                      )),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(fontSize: 25, letterSpacing: -2),
                  ),
                  TextSpan(
                      text: 'FLEX ',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                  TextSpan(
                      text: 'men | Тюмень',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 17,
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ),
          ),
          elevation: 4.0,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QrCode(),
                  ),
                );
              },
              icon: const Icon(Icons.qr_code_scanner)),
          actions: [
            IconButton(
                onPressed: _makePhoneCall,
                icon: const Icon(
                  Icons.call,
                  size: 26,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                          appBar: AppBar(
                        titleSpacing: -1,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        title: const Text('Уведомления',
                            style: TextStyle(fontSize: 20)),
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
                      )),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.notifications,
                  size: 30,
                )),
          ],
        ),
        body: _navigationItems.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color.fromARGB(186, 61, 61, 61),
            iconSize: 26,
            elevation: 0,
            unselectedFontSize: 10,
            selectedFontSize: 10,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: _items,
            type: BottomNavigationBarType.fixed,
            landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
            selectedLabelStyle: const TextStyle(
                overflow: TextOverflow.visible, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                const TextStyle(overflow: TextOverflow.visible)));
  }
}
