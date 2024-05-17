import 'package:flutter/material.dart';
import 'package:flutter_application_2/Routes/feedback.dart';
import 'package:flutter_application_2/routes/schedule.dart';
import 'package:flutter_application_2/additional/Imagesslideshow.dart';
import 'package:flutter_application_2/additional/checkmark.dart';
import 'package:flutter_application_2/Routes/account.dart';
import 'package:flutter_application_2/screens/notifications_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

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
            onPressed: () {}, icon: const Icon(Icons.qr_code_scanner)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                size: 26,
              )),
          IconButton(
              onPressed: () {
                pushNewScreen(
                  context,
                  screen: Notifications(),
                  withNavBar: true, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
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
      body: CheckMarkIndicator(
          child: SafeArea(
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
                        Image.asset('assets/images/image1.jpg',
                            fit: BoxFit.cover),
                        Image.network('assets/images/image2.jpg',
                            fit: BoxFit.cover),
                        Image.network('assets/images/image3.jpg',
                            fit: BoxFit.cover),
                        Image.network('assets/images/image4.jpg',
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
                                  builder: (context) => const Schedule(),
                                ),
                              );
                            },
                            backgroundColor:
                                const Color.fromARGB(255, 255, 216, 87),
                            foregroundColor: Colors.black,
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const FeedbackTF(),
                                  ),
                                );
                              },
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 216, 87),
                              foregroundColor: Colors.black,
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
                              foregroundColor: Colors.black,
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
      )),
    );
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
              SizedBox(
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
                          color: const Color.fromARGB(166, 241, 23, 23),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
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
                                    color: Color.fromARGB(185, 0, 0, 0),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w100)),
                          ],
                        ),
                      ),
                      const Spacer(),
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
              SizedBox(
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
                          color: const Color.fromARGB(137, 17, 255, 156),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
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
                                    color: Color.fromARGB(185, 0, 0, 0),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w100)),
                          ],
                        ),
                      ),
                      const Spacer(),
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
              SizedBox(
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
                          color: const Color.fromARGB(131, 255, 195, 126),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
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
                                    color: Color.fromARGB(185, 0, 0, 0),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w100)),
                          ],
                        ),
                      ),
                      const Spacer(),
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
