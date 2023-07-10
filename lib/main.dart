import 'package:flutter/material.dart';
import 'package:the_secret_of_coffee/pages/login.dart';
import 'dart:ui';
import 'package:the_secret_of_coffee/widgets/button.dart';
import 'package:the_secret_of_coffee/widgets/text.dart';
import 'package:the_secret_of_coffee/widgets/textbox.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Secret Of Coffe',
      home: LoginPage(),
    ),
  );
}
