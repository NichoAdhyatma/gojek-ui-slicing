import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/menu_icons.dart';
import 'package:gojek/components/searchbar.dart';
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
            const SearchBar(),
            const Gopay(),
            const MenuIcon(),
            Padding(
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
                    SvgPicture.asset('assets/icons/dots.svg')
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
