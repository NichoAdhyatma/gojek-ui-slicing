import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/data/icons_data.dart';
import 'package:gojek/theme.dart';

class Gopay extends StatelessWidget {
  const Gopay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: blue1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: const Color(0xFFBBBBBB),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Container(
                    height: 11,
                    width: 118,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(8.0),
                      ),
                      color: Color(
                        0xFF9CCDDB,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: 127,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/gopay.png",
                            height: 14,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Rp. 10.0000",
                            style: bold16.copyWith(color: dark1),
                          ),
                          Text(
                            "Klik & cek riwayat",
                            style: semibold12_5.copyWith(color: green1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ...gopayIcons.map(
              (e) => Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/${e.icon}.svg',
                        colorFilter: ColorFilter.mode(blue1, BlendMode.srcIn),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      e.title,
                      style: semibold14.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
