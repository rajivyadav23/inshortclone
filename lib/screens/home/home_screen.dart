import 'package:inshortclone/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                text: "Discover",
                title: "Inshorts for you",
              ),
              RecommendedShorts(),
              Categories(),
              LatestArticles()
            ],
          ),
        ),
      ),
    );
  }
}
