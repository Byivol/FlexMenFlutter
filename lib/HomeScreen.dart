import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'THE FLEX men | Тюмень ',
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          toolbarHeight: 60,
          shadowColor: Colors.black54,
          elevation: 4.0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.phone_outlined,
                  size: 26,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 30,
                )),
          ],
        ),
        body: Column(
          children: [
            ImageSlideshow(
                indicatorColor: Color.fromARGB(255, 0, 0, 0),
                indicatorRadius: 4,
                indicatorPadding: 15,
                autoPlayInterval: 5000,
                height: 300,
                isLoop: true,
                children: [
                  Image.network(
                    'https://i.ibb.co/942zm3Q/515c770e78f1110a21b3f4c3084a2b30-640x360.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                      'https://i.ibb.co/vBx3V0b/forest-landscape-71767-127.jpg',
                      fit: BoxFit.cover),
                  Image.network('https://i.ibb.co/zRr9pt0/orig.webp',
                      fit: BoxFit.cover),
                ]),
            Row(
              children: <Widget>[
                Expanded(
                  child: FloatingActionButton.small(
                      elevation: 0,
                      onPressed: () {},
                      child: const Text(
                        'Расписание',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: const Color.fromRGBO(236, 254, 33, 1),
                      foregroundColor: Colors.black87),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: FloatingActionButton.small(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: const Color.fromRGBO(236, 254, 33, 1),
                    child: const Text(
                      'Обратная связь',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Add space between the buttons
                Expanded(
                  child: FloatingActionButton.small(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: const Color.fromRGBO(236, 254, 33, 1),
                    child: const Text(
                      'Личный кабинет',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
