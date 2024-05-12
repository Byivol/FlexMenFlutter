import 'package:flutter/material.dart';

import 'imageSlideShow.dart';
import 'checkmark.dart';

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
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.call,
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
        body: CheckMarkIndicator(
          child: ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                Column(
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
                          Image.network(
                              'https://i.ibb.co/9ZLsRdQ/w9-e-H08dl-T0.jpg',
                              fit: BoxFit.cover),
                          Image.network(
                              'https://i.ibb.co/yYnpftL/w5wnkp8k5-Nw.jpg',
                              fit: BoxFit.cover),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 8, left: 6, right: 6),
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: FloatingActionButton.extended(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 0.3,
                              onPressed: () {},
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 216, 87),
                              label: const Text('Расписание',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20)),
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
                            padding: const EdgeInsets.only(
                                top: 8, left: 6, right: 6),
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: Expanded(
                              child: FloatingActionButton.extended(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 0.1,
                                onPressed: () {},
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 216, 87),
                                label: const Text(
                                  'Обратная связь',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                icon: const Icon(Icons.sms_outlined),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: const EdgeInsets.only(
                                top: 8, left: 6, right: 6),
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: Expanded(
                              child: FloatingActionButton.extended(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 0.1,
                                onPressed: () {},
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 216, 87),
                                label: const Text('Личный кабинет',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                icon: const Icon(Icons.account_circle_rounded),
                              ),
                            ))
                      ],
                    ),
                    ExpansionTileListView(scheduleItems: scheduleItems)
                  ],
                ),
              ]),
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
        unselectedItemColor: const Color.fromARGB(186, 61, 61, 61),
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
            initiallyExpanded: true,
            shape: const Border(top: BorderSide.none),
            onExpansionChanged: (e) {},
            title: const Text("Ближайшие занятия:"),
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: 4,
                          height: 60,
                          color: Color.fromARGB(166, 241, 23, 23),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Сегодня\n16:30\n60 мин.',
                        style: TextStyle(
                            height: 0,
                            fontSize: 14,
                            color: Color.fromARGB(169, 0, 0, 0),
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(width: 30),
                      RichText(
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'KICKBOXING ',
                      style: TextStyle( 
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      )),
                  TextSpan(
                      text: '\nСвободно: 4',
                      style: TextStyle(
                          color: Color.fromARGB(185, 0, 0, 0),
                          fontSize: 13,
                          fontWeight: FontWeight.w100)),
                  TextSpan(
                      text: '\nЕгоров Василий',
                      style: TextStyle(
                        color: Color.fromARGB(185, 0, 0, 0) ,
                          fontSize: 13,
                          fontWeight: FontWeight.w100)),
                ],
              ),
            ),
                      Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color.fromARGB(153, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(height: 0),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: 4,
                          height: 60,
                          color: Color.fromARGB(137, 17, 255, 156),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Сегодня\n17:00\n60 мин.',
                        style: TextStyle(
                            height: 0,
                            fontSize: 14,
                            color: Color.fromARGB(169, 0, 0, 0),
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(width: 30),
                      RichText(
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'CYCLING ',
                      style: TextStyle( 
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      )),
                  TextSpan(
                      text: '\nСвободно: 2',
                      style: TextStyle(
                          color: Color.fromARGB(185, 0, 0, 0),
                          fontSize: 13,
                          fontWeight: FontWeight.w100)),
                  TextSpan(
                      text: '\nДинар Айдаров',
                      style: TextStyle(
                        color: Color.fromARGB(185, 0, 0, 0) ,
                          fontSize: 13,
                          fontWeight: FontWeight.w100)),
                ],
              ),
            ),
                      Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color.fromARGB(153, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),

              
              const Divider(height: 0),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: 4,
                          height: 60,
                          color: Color.fromARGB(131, 255, 195, 126),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Сегодня\n17:30\n60 мин.',
                        style: TextStyle(
                            height: 0,
                            fontSize: 14,
                            color: Color.fromARGB(169, 0, 0, 0),
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(width: 30),
                      RichText(
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'TRX ',
                      style: TextStyle( 
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      )),
                  TextSpan(
                      text: '\nСвободно: 1',
                      style: TextStyle(
                          color: Color.fromARGB(185, 0, 0, 0),
                          fontSize: 13,
                          fontWeight: FontWeight.w100)),
                  TextSpan(
                      text: '\nЕгоров Василий',
                      style: TextStyle(
                        color: Color.fromARGB(185, 0, 0, 0) ,
                          fontSize: 13,
                          fontWeight: FontWeight.w100)),
                ],
              ),
            ),
                      Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color.fromARGB(153, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(height: 0),
            ],
          ),
        ),
      ],
    );
  }
}
