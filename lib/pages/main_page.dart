import 'package:flutter/material.dart';
import 'package:postest4_2009106072_gilang/pages/cuaca_page.dart';
import 'package:postest4_2009106072_gilang/pages/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _navigationIndex = 0;
  static final List<Widget> _pages = [
    CuacaPage(),
    const Center(
      child: Text("Halaman Masih Belum Dibuat"),
    ),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_navigationIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          _navigationIndex = index;
        }),
        currentIndex: _navigationIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cloud_outlined,
            ),
            activeIcon: Icon(
              Icons.cloud,
            ),
            label: "Cuaca",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_outlined),
            label: "Ramalan Cuaca",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: "Pengaturan",
          )
        ],
      ),
    );
  }
}