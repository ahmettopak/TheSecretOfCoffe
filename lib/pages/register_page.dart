import 'package:flutter/material.dart';
import 'package:the_secret_of_coffee/pages/login.dart';
import 'dart:ui';
import 'package:the_secret_of_coffee/widgets/button.dart';
import 'package:the_secret_of_coffee/widgets/text.dart';
import 'package:the_secret_of_coffee/widgets/textbox.dart';

String nameText = "", surnameText = "", emailText = "", passwordText = "";
int phoneNumberText = 0;

void setNameText(String value) {
  nameText = value;
}

void setPhoneText(int value) {
  phoneNumberText = value;
}

void setEmailText(String value) {
  emailText = value;
}

void setPasswordText(String value) {
  passwordText = value;
}

void register() {
  print(passwordText);
  print(emailText);
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              SizedBox(
                height: size.height,
                child: Image.asset(
                  'assets/images/background.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
                          child: SizedBox(
                            width: size.width * .9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.width * .15,
                                    bottom: size.width * .1,
                                  ),
                                  child: title("Register"),
                                ),
                                text("Name", context, Icons.person_outlined),
                                phoneNumber("Phone Number", context),
                                email(
                                  context,
                                  (value) {
                                    setEmailText(value);
                                  },
                                ),
                                password("Password", context, (value) {
                                  setPasswordText(value);
                                }),
                                textButton(
                                  "Login if you already have an account",
                                  () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginPage(),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(height: size.width * .3),
                                largeButton("Register", size, register),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
