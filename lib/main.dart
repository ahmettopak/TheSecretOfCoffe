import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_secret_of_coffee/widgets/text.dart';
import 'package:the_secret_of_coffee/widgets/textbox.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Secret Of Coffe',
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    Expanded(
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
                                  child: title("SIGN IN"),
                                ),
                                text("Username", context),
                                email(context),
                                password("Password", context),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'Forgotten password!',
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            HapticFeedback.lightImpact();
                                            Fluttertoast.showToast(
                                              msg:
                                                  'Forgotten password! button pressed',
                                            );
                                          },
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Create a new Account',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            HapticFeedback.lightImpact();
                                            Fluttertoast.showToast(
                                              msg:
                                                  'Create a new Account button pressed',
                                            );
                                          },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.width * .3),
                                // InkWell(
                                //   splashColor: Colors.transparent,
                                //   highlightColor: Colors.transparent,
                                //   onTap: () {
                                //     HapticFeedback.lightImpact();
                                //     Fluttertoast.showToast(
                                //       msg: 'Sign-In button pressed',
                                //     );
                                //   },
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
                                //       'Sing-In',
                                //       style: TextStyle(
                                //         color: Colors.white,
                                //         fontSize: 20,
                                //         fontWeight: FontWeight.w600,
                                //       ),
                                //     ),
                                //   ),
                                // ),

                                TextButton(
                                    onPressed: () => {}, child: Text("Login")),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
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
