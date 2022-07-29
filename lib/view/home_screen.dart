import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/view/pages/overview_pages/business.dart';
import 'package:news_app/view/pages/overview_pages/entertainment.dart';
import 'package:news_app/view/pages/overview_pages/general.dart';
import 'package:news_app/view/pages/overview_pages/health.dart';
import 'package:news_app/view/pages/overview_pages/science.dart';
import 'package:news_app/view/pages/overview_pages/sports.dart';
import 'package:news_app/view/pages/overview_pages/technology.dart';
import 'package:news_app/view/reusable_components/default_intro_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categoryName = [
    "general",
    "business",
    "entertainment",
    "health",
    "science",
    "sports",
    "technology",
  ];
  List<String> categoryImage = [
    "assets/general.png",
    "assets/business.png",
    "assets/entertainment.png",
    "assets/health.png",
    "assets/science.png",
    "assets/sports.png",
    "assets/technology.png",
  ];
  List categoryDirectory = [
    GeneralScreen(),
    BusinessScreen(),
    EntertainmentScreen(),
    HealthScreen(),
    ScienceScreen(),
    SportsScreen(),
    TechnologyScreen(),
  ];

  // get index => categoryDirectory[index];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: defaultIntroCard(
        categoryName,
        categoryImage,
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => categoryDirectory[2])),
      ),
    );
  }
}
