import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultIntroCard(
    List categoryName,
    List categoryImage,
    VoidCallback onTap,
    ){
  return ListView.builder(
    physics: const BouncingScrollPhysics(),
    itemCount: categoryName.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: onTap,
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
  );
}