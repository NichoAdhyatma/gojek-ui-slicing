import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.13 -
            MediaQuery.of(context).viewPadding.top,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
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
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
