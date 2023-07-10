import 'package:flutter/material.dart';

typedef TextChangedCallback = void Function(String value);

Widget password(String hintText, BuildContext context,
    TextChangedCallback onChangedCallback) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.width / 8,
    width: size.width / 1.25,
    alignment: Alignment.center,
    padding: EdgeInsets.only(right: size.width / 30),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(.1),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      style: TextStyle(
        color: Colors.white.withOpacity(.9),
      ),
      onChanged: onChangedCallback,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock_outline,
          color: Colors.white.withOpacity(.8),
        ),
        border: InputBorder.none,
        hintMaxLines: 1,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.white.withOpacity(.5),
        ),
      ),
    ),
  );
}

Widget email(BuildContext context, TextChangedCallback onChangedCallback) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.width / 8,
    width: size.width / 1.25,
    alignment: Alignment.center,
    padding: EdgeInsets.only(right: size.width / 30),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(.1),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      style: TextStyle(
        color: Colors.white.withOpacity(.9),
      ),
      onChanged: onChangedCallback,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email_outlined,
          color: Colors.white.withOpacity(.8),
        ),
        border: InputBorder.none,
        hintMaxLines: 1,
        hintText: "E-Mail",
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.white.withOpacity(.5),
        ),
      ),
    ),
  );
}

Widget phoneNumber(String hintText, BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.width / 8,
    width: size.width / 1.25,
    alignment: Alignment.center,
    padding: EdgeInsets.only(right: size.width / 30),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(.1),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      style: TextStyle(
        color: Colors.white.withOpacity(.9),
      ),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.phone_outlined,
          color: Colors.white.withOpacity(.8),
        ),
        border: InputBorder.none,
        hintMaxLines: 1,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.white.withOpacity(.5),
        ),
      ),
    ),
  );
}

Widget text(String hintText, BuildContext context, IconData icon) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.width / 8,
    width: size.width / 1.25,
    alignment: Alignment.center,
    padding: EdgeInsets.only(right: size.width / 30),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(.1),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      style: TextStyle(
        color: Colors.white.withOpacity(.9),
      ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.white.withOpacity(.8),
        ),
        border: InputBorder.none,
        hintMaxLines: 1,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.white.withOpacity(.5),
        ),
      ),
    ),
  );
}
