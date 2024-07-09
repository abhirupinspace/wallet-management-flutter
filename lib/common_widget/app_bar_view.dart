// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget{
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          "Station Speak Pro",
          style: TextStyle(
              color: TColor.primary, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: TextButton(
          onPressed: () {},
          child: Icon(
            Icons.more_vert,
            size: 25,
            color: TColor.primary,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              TextButton(
                onPressed: () {},
                child: Icon(Icons.notifications_outlined,
                    size: 30, color: TColor.primary),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, right: 20),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: TColor.notificationActive,
                    borderRadius: BorderRadius.circular(5)),
              )
            ],
          )
        ],
        //backgroundColor: TColor.appBarBg,
        backgroundColor: Color.fromARGB(255, 142, 125, 255),
      );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}