import 'package:flutter/material.dart';
import 'package:e_service/menu.dashboard.dart';
import 'package:e_service/login.dart';
import 'package:e_service/register.dart';
import 'package:e_service/landing.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'landing',
        theme: ThemeData(
        fontFamily: 'Poppins',
      ),
        routes: {
          'landing': (context) => const MyLanding(),
          'login': (context) => const MyLogin(),
          'register': (context) => const MyRegister(),
          'menu.dashboard': (context) => const MenuDashboardPage(),
        }),
  );
}