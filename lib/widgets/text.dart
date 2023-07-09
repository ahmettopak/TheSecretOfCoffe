import 'package:flutter/material.dart';

Widget title(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.white.withOpacity(.8),
    ),
  );
}
