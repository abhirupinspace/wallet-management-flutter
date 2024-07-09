import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';

class SelectionButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isSelect;

  const SelectionButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.isSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: isSelect
          ? BoxDecoration(
              color: TColor.primary, borderRadius: BorderRadius.circular(10))
          : BoxDecoration(
              border: Border.all(color: TColor.primary),
              borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          title, // Use the 'title' parameter instead of hardcoding "Today"
          style: TextStyle(
            color: isSelect ? Colors.white : TColor.primary,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
