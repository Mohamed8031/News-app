import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  String? text,
  VoidCallback? onTap,
}) {
  return FractionallySizedBox(
    widthFactor: .55,
    child: ElevatedButton(
      onPressed: onTap,
      child: Text(
        text!,
        style: const TextStyle(fontSize: 25),
      ),
    ),
  );
}
