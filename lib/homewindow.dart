import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> scheduleItems = [
    'Сегодня\n12:00\n60 мин.',
    'Сегодня\n12:30\n60 мин.',
    'Сегодня\n13:00\n60 мин',
    'Сегодня\n14:00\n60 мин',
    'Сегодня\n14:30\n60 мин',
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
                    'https://i.ibb.co/tLnV37G/c-PY0-Ckv-Pgm8.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                      'https://i.ibb.co/3FdKtHm/x-Ie-TEr-SMPb-E.jpg',
                      fit: BoxFit.cover),
                  Image.network('https://i.ibb.co/9ZLsRdQ/w9-e-H08dl-T0.jpg',
                      fit: BoxFit.cover),
                  Image.network('https://i.ibb.co/yYnpftL/w5wnkp8k5-Nw.jpg',
                      fit: BoxFit.cover),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 8, left: 6, right: 6),
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: FloatingActionButton.extended(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 0.3,
                      onPressed: () {},
                      backgroundColor: Color.fromARGB(255, 255, 216, 87),
                      label: const Text('Расписание',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
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
                    padding: const EdgeInsets.only(top: 8, left: 6, right: 6),
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Expanded(
                      child: FloatingActionButton.extended(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 0.1,
                        onPressed: () {},
                        backgroundColor: const Color.fromARGB(255, 255, 216, 87),
                        label: const Text(
                          'Обратная связь',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        icon: const Icon(Icons.sms_outlined),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    padding: const EdgeInsets.only(top: 8, left: 6, right: 6),
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Expanded(
                      child: FloatingActionButton.extended(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 0.1,
                        onPressed: () {},
                        backgroundColor: const Color.fromARGB(255, 255, 216, 87),
                        label: const Text('Личный кабинет',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        icon: const Icon(Icons.account_circle_rounded),
                      ),
                    ))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: ExpansionTile(
                  title: Text('Ближайшие занятия:'),
                  children: [
                    Container(
                      height: 250,
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
                    ),
                  ],
                )),
              ],
            ),
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

class ExpansionTileListView extends StatefulWidget {
  final List<String> scheduleItems;
  const ExpansionTileListView({required this.scheduleItems, super.key});

  @override
  State<ExpansionTileListView> createState() => _ExpansionTileListView();
}

class _ExpansionTileListView extends State<ExpansionTileListView> {
  List<String> get scheduleItems => widget.scheduleItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ExpansionTile(
            onExpansionChanged: (e) {},
            title: Text("You title text"),
            children: [
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(scheduleItems[0]),
                onTap: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
