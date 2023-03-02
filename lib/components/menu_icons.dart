import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/data/icons_data.dart';
import 'package:gojek/theme.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 27,
        right: 27,
        top: 32,
      ),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          children: [
            ...menuIcons.map(
              (e) => Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: e.color,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/${e.icon}.svg',
                      colorFilter: ColorFilter.mode(
                        e.icon == 'other' ? dark2 : Colors.white,
                        e.icon == 'goclub' ? BlendMode.srcOut : BlendMode.srcIn,
                      ),
                      width: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    e.title,
                    style: regular12_5.copyWith(color: dark2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
