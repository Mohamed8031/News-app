import 'package:flutter/material.dart';

Widget defaultLoading() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Image.asset("assets/loading.gif"),
    ),
  );
}
