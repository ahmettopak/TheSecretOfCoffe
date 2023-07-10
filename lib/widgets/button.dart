import 'package:flutter/material.dart';

Widget largeButton(String text, Size size, VoidCallback onTapCallback) {
  // return InkWell(
  //   splashColor: Colors.transparent,
  //   highlightColor: Colors.transparent,
  //   onTap: onTapCallback,
  //   child: Container(
  //     margin: EdgeInsets.only(
  //       bottom: size.width * .05,
  //     ),
  //     height: size.width / 8,
  //     width: size.width / 1.25,
  //     alignment: Alignment.center,
  //     decoration: BoxDecoration(
  //       color: Colors.black.withOpacity(.1),
  //       borderRadius: BorderRadius.circular(20),
  //     ),
  //     child: Text(
  //       text,
  //       style: const TextStyle(
  //         color: Colors.white,
  //         fontSize: 20,
  //         fontWeight: FontWeight.w600,
  //       ),
  //     ),
  //   ),
  // );

  return ElevatedButton(
    onPressed: onTapCallback,
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0x131a1d),
      minimumSize: const Size(250, 50),
      maximumSize: const Size(400, 70),
    ),
    child: Text(
      text,
      style: const TextStyle(fontSize: 20),
    ),
  );
}

Widget textButton(String text, VoidCallback onTapCallback) {
  return TextButton(
    onPressed: onTapCallback,
    child: Text(
      text,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
