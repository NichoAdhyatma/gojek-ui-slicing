import 'package:flutter/material.dart';
import 'package:gojek/theme.dart';

class GopayLater extends StatelessWidget {
  const GopayLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 32,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/gopaylater.png',
            height: 14,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Lebih gemat pakai gopaylater 🤩",
            style: bold16.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Yuk belanja pakai gopaylater, pasti lebih hemat",
            style: regular14.copyWith(color: dark2),
          ),
        ],
      ),
    );
  }
}
