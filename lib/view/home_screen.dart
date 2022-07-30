import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/view/pages/inner_card.dart';
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


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: categoryName.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => categoryDirectory[index])),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                            width: double.infinity,
                            child: Image.asset(
                              categoryImage[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            color: Colors.black.withOpacity(.7),
                            width: double.infinity,
                            height: 200,
                          ),
                          Text(
                            categoryName[index].toUpperCase(),
                            style: const TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
      ),
    );
  }
}