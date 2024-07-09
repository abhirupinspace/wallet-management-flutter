// ignore_for_file: unused_local_variable, must_be_immutable, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';

class BarView extends StatelessWidget {
  final Map cObj;
  final double barwidth;
  final double maxval;
  const BarView(
      {super.key,
      required this.cObj,
      required this.barwidth,
      required this.maxval});

  @override
  Widget build(BuildContext context) {
  var height= 180 - 16 - 15 ;

    var incomeVal = double.tryParse(cObj["income"].toString()) ?? 0.0;
    var expVal = double.tryParse(cObj["Expense"].toString()) ?? 0.0;
    var width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if(expVal > 0.0)
        Container(width: barwidth,
        height: expVal*height / maxval,
          decoration: BoxDecoration(color: TColor.secondary, borderRadius: BorderRadius.circular(5)),
        ),
        const SizedBox(
          height: 4,
        ),
        if(incomeVal > 0.0)
        Container(width: barwidth,
        height: incomeVal*height / maxval,
          decoration: BoxDecoration(color: TColor.primary, borderRadius: BorderRadius.circular(5)),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          cObj["Name"].toString(),
          style: const TextStyle(
              color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
