import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return [
        const HomeScreen(),
        const Screen2(),
        const Screen3(),
        const Screen4(),
        const Screen5(),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
            activeColorPrimary: Colors.black,
            inactiveColorPrimary: const Color.fromARGB(186, 61, 61, 61),
            icon: const Icon(Icons.home_filled),
            title: ("Главная"),
            textStyle: const TextStyle(fontSize: 10)),
        PersistentBottomNavBarItem(
            activeColorPrimary: Colors.black,
            inactiveColorPrimary: const Color.fromARGB(186, 61, 61, 61),
            icon: const Icon(Icons.directions_run),
            title: ("Мои занятия"),
            textStyle: const TextStyle(fontSize: 10)),
        PersistentBottomNavBarItem(
            activeColorPrimary: Colors.black,
            inactiveColorPrimary: const Color.fromARGB(186, 61, 61, 61),
            icon: const Icon(Icons.business),
            title: ("О студии"),
            textStyle: const TextStyle(fontSize: 10)),
        PersistentBottomNavBarItem(
            activeColorSecondary: Colors.black,
            inactiveColorPrimary: const Color.fromARGB(186, 61, 61, 61),
            icon: const Icon(Icons.notifications_outlined),
            title: ("Уведомления"),
            textStyle: const TextStyle(fontSize: 10)),
        PersistentBottomNavBarItem(
            activeColorPrimary: Colors.black87,
            inactiveColorPrimary: const Color.fromARGB(186, 61, 61, 61),
            icon: const Icon(
              Icons.format_list_bulleted,
              size: 30,
            ),
            title: ("Ещё"),
            textStyle: const TextStyle(fontSize: 10)),
      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return Scaffold(
        appBar: AppBar(
          title: const Text('124'),
        ),
        bottomNavigationBar: PersistentTabView(
          context,
          screens: buildScreens(),
          items: navBarsItems(),
          controller: controller,
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: true,
          popAllScreensOnTapOfSelectedTab: false,
          hideNavigationBar: false,
          hideNavigationBarWhenKeyboardShows: false,
          popActionScreens: PopActionScreensType.all,
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.simple,
        ));
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: const Screen2(),
              withNavBar: true,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: const Text('Screen2'),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen2')),
      body: const Center(
        child: Text(
          'Screen2',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen3')),
      body: const Center(
        child: Text(
          'Screen3',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen4')),
      body: const Center(
        child: Text(
          'Screen4',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen5')),
      body: const Center(
        child: Text(
          'Screen5',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
