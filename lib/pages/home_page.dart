import 'package:flutter/material.dart';
import 'package:gojek/components/akses_cepat.dart';
import 'package:gojek/components/go_club.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/gopay_later.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/menu_icons.dart';
import 'package:gojek/components/searchbar.dart';
import 'package:gojek/data/news_data.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            const Gopay(),
            const MenuIcon(),
            const GoClub(),
            const AksesCepat(),
            const GopayLater(),
            ...news.map(
              (e) => Padding(
                padding:
                    const EdgeInsets.only(bottom: 24.0, left: 16, right: 16),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: dark4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/${e.image}'),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.title,
                              style: bold16.copyWith(color: dark1),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              e.desc,
                              style: regular14.copyWith(color: dark2),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
