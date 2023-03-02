import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';

class AksesCepat extends StatelessWidget {
  const AksesCepat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 15,
        right: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Akses Cepat",
            style: bold18.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: const Color(0xFFE8E8E8),
              ),
            ),
            child: Column(
              children: [
                ...[
                  'Pintu masuk motor Royal Plaza',
                  'Pintu keluar motor Royar Plaza'
                ].map(
                  (e) => Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: green1,
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/goride.svg',
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Text(
                            e,
                            style: regular14.copyWith(color: dark1),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        SvgPicture.asset(
                          'assets/icons/left.svg',
                          colorFilter: ColorFilter.mode(dark1, BlendMode.srcIn),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
