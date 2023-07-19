import 'package:flutter/material.dart';
import 'package:liberty/app/widgets/app_button.dart';
import 'package:liberty/app/widgets/app_do_it.dart';
import 'package:liberty/core/app_images.dart';
import 'package:liberty/route/routes.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            children: [
              AppDoIt(),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.8,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.passthrough,
                  children: [
                    Positioned(
                      top: -120,
                      right: 0,
                      left: 0,
                      child: Image.asset(AppImages.calendar),
                    ),
                    Positioned(
                      left: 10,
                      top: 100,
                      child: Image.asset(AppImages.calendar),
                    ),
                    Positioned(
                      right: 10,
                      top: 100,
                      child: Image.asset(AppImages.calendar),
                    ),
                    Positioned(
                      top: 100,
                      left: 0,
                      right: 0,
                      child: Image.asset(AppImages.manAndTable),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 15),
                child: Text.rich(TextSpan(
                    text: 'Just ',
                    style: const TextStyle(
                      fontFamily: 'MarkPro',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      height: 0.69,
                      color: Color(0xFF000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'DO-IT',
                        style: const TextStyle(
                          fontFamily: 'MarkPro',
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          height: 0.69,
                          color: Color(0xFF217AC0),
                        ),
                      )
                    ])),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AppButton(
                  title: "Create account",
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.authPage);
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Color(0xFFDADADA),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.signinPage);
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: Color(0xFF217AC0),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
