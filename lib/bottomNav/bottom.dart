import 'package:e_service/bottomNav/history.dart';
import 'package:e_service/bottomNav/home_page.dart';
import 'package:e_service/bottomNav/profil.dart';
import 'package:flutter/material.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body = [
    HomePage(),
    History(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(onTap: ontap, currentIndex: currentIndex, items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: 'Beranda',
          activeIcon: Icon(Icons.home_outlined, color: Colors.amberAccent),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history,
            color: Colors.grey,
          ),
          label: 'Riwayat\nPesanan',
          activeIcon: Icon(Icons.history_outlined, color: Colors.amberAccent),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: 'Profil',
          activeIcon: Icon(Icons.person_outlined, color: Colors.amberAccent),
        )
      ]),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
