import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/searchbar.dart';
import 'package:gojek/data/icons_data.dart';
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
          children: const [
            SearchBar(),
            Gopay(),
          ],
        ),
      ),
    );
  }
}
