import 'package:e_service/bottomNav/history.dart';
import 'package:flutter/material.dart';
import 'package:e_service/login.dart';
import 'package:e_service/register.dart';
import 'package:e_service/bottomNav/home_page.dart';
import 'package:e_service/bottomNav/bottom.dart';
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
          'home_page': (context) => const HomePage(),
          'bottom': (context) => const BottomNavi(),
          'history': (context) => const History(),
        }),
  );
}