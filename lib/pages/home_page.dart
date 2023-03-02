import 'package:flutter/material.dart';
import 'package:gojek/components/akses_cepat.dart';
import 'package:gojek/components/go_club.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            const Gopay(),
            const MenuIcon(),
            const GoClub(),
            const AksesCepat(),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 32,
              ),
              child: Column(),
            ),
          ],
        ),
      ),
    );
  }
}
