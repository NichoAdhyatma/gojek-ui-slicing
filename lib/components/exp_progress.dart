import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';

class ExperienceProgress extends StatelessWidget {
  const ExperienceProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19, left: 15, right: 15),
      child: Container(
        height: 65,
        width: double.infinity,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFEAF3F6),
              Colors.white,
            ],
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xFFE8E8E8),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 4,
              bottom: 4,
              left: 8,
              child: SvgPicture.asset('assets/icons/dots.svg'),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    height: 40,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "117 Exp lagi ada harta karun",
                          style: semibold14.copyWith(
                            color: dark1,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: dark3,
                            ),
                            child: LinearProgressIndicator(
                              value: .8,
                              backgroundColor: dark3,
                              color: green1,
                            )),
                      ],
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
            )
          ],
        ),
      ),
    );
  }
}
