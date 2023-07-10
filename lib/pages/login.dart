import 'package:flutter/material.dart';
import 'package:the_secret_of_coffee/pages/register_page.dart';
import 'dart:ui';
import 'package:the_secret_of_coffee/widgets/button.dart';
import 'package:the_secret_of_coffee/widgets/text.dart';
import 'package:the_secret_of_coffee/widgets/textbox.dart';

String passwordText = "", emailText = "";

void setPasswordText(String value) {
  passwordText = value;
}

void setEmailText(String value) {
  emailText = value;
}

void login() {
  print(passwordText);
  print(emailText);
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                                  child: title("LOGIN"),
                                ),
                                //text("Username", context),
                                email(
                                  context,
                                  (value) {
                                    setEmailText(value);
                                  },
                                ),
                                password("Password", context, (value) {
                                  setPasswordText(value);
                                }),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    textButton(
                                      "Forgotten password!",
                                      () {
                                        print("Forgotten");
                                      },
                                    ),
                                    textButton(
                                      "Create Account",
                                      () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterPage(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.width * .3),
                                largeButton("Login", size, login),
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
