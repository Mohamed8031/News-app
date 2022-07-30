import 'dart:core';
import 'package:flutter/material.dart';

Widget innerCard(
  String image,
  String title,
  String sourceName,
  String date,
  String content,
) {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlueAccent,
                blurRadius: 25,
                spreadRadius: 5,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: double.infinity,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    sourceName,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Published at: ${DateTime.parse(date).toString().substring(0, 11)}",
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  Text(
                    "${DateTime.parse(date).toString().substring(11, 16)}  ",
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              Text(title,
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue[900])),
              const SizedBox(height: 10),
              const Divider(height: 3, color: Colors.black),
              const SizedBox(height: 10),
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    content,
                    style: const TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
