import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> scheduleItems = [
    '8:00 - 9:00',
    '9:00 - 10:00',
    '10:00 - 11:00',
    '11:00 - 12:00',
    '12:00 - 13:00',
    '13:00 - 14:00',
    '14:00 - 15:00',
    '15:00 - 16:00',
    '16:00 - 17:00',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'THE FLEX men | Тюмень ',
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          toolbarHeight: 60,
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
                indicatorColor: const Color.fromARGB(255, 0, 0, 0),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: FloatingActionButton.extended(
                      elevation: 0.3,
                      onPressed: () {},
                      backgroundColor: const Color.fromRGBO(236, 254, 33, 1),
                      label: const Text('Расписание',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 15)),
                      icon: const Icon(Icons.assignment),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    padding: const EdgeInsets.all(4),
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Expanded(
                      child: FloatingActionButton.extended(
                        elevation: 0.1,
                        onPressed: () {},
                        backgroundColor: const Color.fromRGBO(236, 254, 33, 1),
                        label: const Text(
                          'Обратная связь',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        icon: const Icon(Icons.sms_outlined),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    padding: const EdgeInsets.all(4),
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Expanded(
                      child: FloatingActionButton.extended(
                        elevation: 0.1,
                        onPressed: () {},
                        backgroundColor: const Color.fromRGBO(236, 254, 33, 1),
                        label: const Text('Личный кабинет',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        icon: const Icon(Icons.account_circle_rounded),
                      ),
                    ))
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: scheduleItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(scheduleItems[index]),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right_sharp,
                      color: Color.fromARGB(126, 0, 0, 0),
                    ),
                    onTap: () {},
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 1,
                    color: Colors.grey,
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: const BottomNavigationBarExample(),
      ),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

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
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Color.fromARGB(186, 61, 61, 61),
        iconSize: 26,
        elevation: 0,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: _items,
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        selectedLabelStyle: const TextStyle(
            overflow: TextOverflow.visible, fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(overflow: TextOverflow.visible));
  }
}
