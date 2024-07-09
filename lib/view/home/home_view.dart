// ignore_for_file: prefer_const_constructors, unused_local_variable, duplicate_ignore

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';
import 'package:wallet_management/common_widget/bar_view.dart';
import 'package:wallet_management/common_widget/selection_button.dart';
import 'package:wallet_management/common_widget/transaction_row.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectButton = 0;

  var bardata = [
    {"Name": "Sun", "income": 10, "Expense": 1},
    {"Name": "Mon", "income": 5, "Expense": 3},
    {"Name": "Tue", "income": 4, "Expense": 4},
    {"Name": "Wed", "income": 7, "Expense": 5},
    {"Name": "Thu", "income": 5, "Expense": 6},
    {"Name": "Fri", "income": 7, "Expense": 4},
    {"Name": "Sat", "income": 6, "Expense": 6},
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var media = MediaQuery.of(context).size;
    var barWidth = (media.width / bardata.length) - 30;
    var maxVal = bardata
        .map((e) =>
            (double.tryParse(e["income"].toString()) ?? 0.0) +
            (double.tryParse(e["Expense"].toString()) ?? 0.0))
        .reduce((max));
    return Scaffold(
      backgroundColor: TColor.bg,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectionButton(
                    title: "Today",
                    isSelect: selectButton == 0,
                    onPressed: () {
                      setState(() {
                        selectButton == 0;
                      });
                    }),
                SelectionButton(
                    title: "Week",
                    isSelect: selectButton == 1,
                    onPressed: () {
                      setState(() {
                        selectButton == 1;
                      });
                    }),
                SelectionButton(
                    title: "Month",
                    isSelect: selectButton == 2,
                    onPressed: () {
                      setState(() {
                        selectButton == 2;
                      });
                    }),
                SelectionButton(
                    title: "Year",
                    isSelect: selectButton == 3,
                    onPressed: () {
                      setState(() {
                        selectButton == 3;
                      });
                    })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 180,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: bardata
                      .map((cObj) => BarView(
                            cObj: cObj,
                            maxval: maxVal,
                            barwidth: barWidth,
                          ))
                      .toList()),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Color(0xffECE9FF),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Arrival time",
                            style: TextStyle(
                                color: Color(0xff958BCE),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xff02C487),
                            size: 30,
                          )
                        ],
                      ),
                      Text(
                        "12:58 pm",
                        style: TextStyle(
                            color: TColor.primary,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                )),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      color: Color(0xffEBFBFF),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Departure Time",
                            style: TextStyle(
                                color: Color(0xff71C1D5),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.arrow_drop_up,
                            color: Color.fromARGB(255, 218, 75, 9),
                            size: 30,
                          )
                        ],
                      ),
                      Text(
                        "13:00 pm",
                        style: TextStyle(
                            color: TColor.secondary,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "History",
              style: TextStyle(
                  color: TColor.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [{}, {}, {}, {}]
                  .map((cObj) => const TransactionRow())
                  .toList(),
            ),
          ]),
        ),
      ),
    );
  }
}
