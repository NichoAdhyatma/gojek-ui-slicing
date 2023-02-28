import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 23,
        left: 15,
        right: 15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFFE8E8E8))),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    colorFilter: ColorFilter.mode(
                      dark1,
                      BlendMode.srcIn,
                    ),
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Cari layanan, makanan & tujuan",
                    style: regular14.copyWith(color: dark3),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35 / 2),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                      "https://api.multiavatar.com/Starcrasher.png"),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35 / 2),
                        color: const Color(0xFFD1E7EE)),
                    clipBehavior: Clip.hardEdge,
                    child: SvgPicture.asset(
                      "assets/icons/goclub.svg",
                      colorFilter: ColorFilter.mode(blue3, BlendMode.srcIn),
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
