import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';

class TransactionRow extends StatelessWidget {
  const TransactionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(20),
        // ignore: prefer_const_literals_to_create_immutables
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 215, 211, 235),
                  offset: Offset(0, 7),
                  blurRadius: 10)
            ]),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Color(0xffFFE5F3),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: TColor.primary,
                size: 25,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "XYZ Local",
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xff5C5C5C),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "13/01/2024  4:48pm",
                    maxLines: 1,
                    style: TextStyle(color: Color(0xff5C5C5C), fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            const Text(
              "PF 2",
              maxLines: 1,
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ],
        ));
  }
}
