// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:inshortclone/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../components/custom_app_bar.dart';
import 'components/categories.dart';
import 'components/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(
                text: "Discover",
                title: "Inshorts for you",
              ),
              RecommendedShorts(),
              const Categories(),
              LatestShorts()
            ],
          ),
        ),
      ),
    );
  }

  LatestShorts() {}

  RecommendedShorts() {}
}
