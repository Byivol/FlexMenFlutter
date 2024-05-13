import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'imageSlideShow.dart';
import 'checkmark.dart';
import 'Screens/account.dart';
import 'Screens/qrcode.dart';
import 'Screens/notifications.dart';
import 'expansiontile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '89292615056',
    );
    await launchUrl(launchUri);
  }

  final List<String> scheduleItems = [
    'Сегодня\n12:00\n60 мин.',
    'Сегодня\n12:30\n60 мин.',
    'Сегодня\n13:00\n60 мин',
    'Сегодня\n14:00\n60 мин',
    'Сегодня\n14:30\n60 мин',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          padding:
                              const EdgeInsets.only(top: 8, left: 6, right: 6),
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: FloatingActionButton.extended(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 0.3,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Notifications(),
                                ),
                              );
                            },
                            backgroundColor:
                                const Color.fromARGB(255, 255, 216, 87),
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
                          padding:
                              const EdgeInsets.only(top: 8, left: 6, right: 6),
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
                          padding:
                              const EdgeInsets.only(top: 8, left: 6, right: 6),
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Expanded(
                            child: FloatingActionButton.extended(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 0.1,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Account(),
                                  ),
                                );
                              },
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
    );
  }
}
