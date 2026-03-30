import 'package:flutter/material.dart';
import 'abstract.dart';
import 'certificates.dart';
import 'pre_conf.dart';
import 'home.dart';
import 'workshop.dart';

class MainBottomBar extends StatefulWidget {
  const MainBottomBar({super.key});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  int selectedIndex = 0;
  final List<Widget> _pages = [
    DashboardPage(),
    Abstractpage(),
    PreConferencePage(),
    WorkShopPage(),
    CertificatePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: "Abstracts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Pre-Conf",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: "Workshop"),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: "Certificates",
          ),
        ],
      ),
    );
  }
}
