import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mco/screen/news_screen/news_screen.dart';
import 'package:mco/screen/profile_sceen/profile_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int newIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> Screens = [
      const news_screen(),
      const profile_screen(),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,

        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFFBB2226),
          onTap: (int index) {
            setState(() {
              newIndex = index;
            });
          },
          currentIndex: newIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidComments),
              label: 'Questions',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.tags,
                size: 20,
              ),
              label: 'Tags',
            ),
          ],
        ),
        body: Screens[newIndex],
      ),
    );
  }
}