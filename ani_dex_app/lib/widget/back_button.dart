import 'package:ani_dex_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Backbtn extends StatelessWidget {
  const Backbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(
        top: 16,
        left: 16,
      ),
      decoration: BoxDecoration(
          color: Colours.scaffoldBgColor,
          borderRadius: BorderRadius.circular(8)),
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded)),
    );
  }
}
