// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';
import 'package:wallet_management/view/login%20page/login_page.dart';
import 'package:wallet_management/view/main_tab/main_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Station Speak Pro',
      theme: ThemeData(
      
        primaryColor: TColor.primary,
        useMaterial3: true,
      ),
      //home: const MainTabView(),
      home: const LoginPage(),
    );
  }
}

