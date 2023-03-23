import 'package:flutter/material.dart';
import 'package:e_service/menu.dashboard.dart';
import 'package:e_service/login.dart';
import 'package:e_service/register.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        theme: ThemeData(
        fontFamily: 'Poppins',
      ),
        routes: {
          'login': (context) => const MyLogin(),
          'register': (context) => const MyRegister(),
          'menu.dashboard': (context) => const MenuDashboardPage(),
        }),
  );
}