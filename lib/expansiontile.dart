import 'package:flutter/material.dart';

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
