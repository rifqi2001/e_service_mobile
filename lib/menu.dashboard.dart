import 'package:flutter/material.dart';

final Color backgroundColor = Color.fromARGB(255, 101, 203, 233);

class MenuDashboardPage extends StatefulWidget {
  const MenuDashboardPage({super.key});

  @override
  State<MenuDashboardPage> createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage> {
  bool isCollapsed = true;
  late double screenWidth, screenHeigth;
  final Duration duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeigth = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Dashboard",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Text("Riwayat Pemesanan",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Text("Edit Profil",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      top: isCollapsed ? 0 : 0.0 * screenHeigth,
      bottom: isCollapsed ? 0 : 0.0 * screenWidth,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      duration: duration,
      child: Material(
        animationDuration: const Duration(milliseconds: 3000),
        borderRadius: BorderRadius.all(Radius.circular(40)),
        elevation: 0,
        color: backgroundColor,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 10, top: 40),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                      child: const Icon(Icons.menu, color: Colors.white),
                      onTap: () {
                        setState(() {
                          isCollapsed = !isCollapsed;
                        });
                      }),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "E-SERVICE",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
