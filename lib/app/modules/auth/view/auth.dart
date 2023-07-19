import 'package:flutter/material.dart';
import 'package:liberty/app/widgets/app_textfield.dart';
import 'package:liberty/app/widgets/app_triangle.dart';
import 'package:liberty/core/app_images.dart';

import '../../../widgets/app_button.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 24, right: 24, top:15),
        child: ListView(
          children: [
           AppBackButton(),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Create \nAccount",
                style: TextStyle(
                  fontFamily: 'MarkPro',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  height: 1.17,
                  letterSpacing: -0.24,
                  color: Color(0xFF0E0E0E),
                ),
              ),
            ),
            const Text.rich(
              TextSpan(
                text: "Please fille the details below to \n create a ",
                style: TextStyle(
                  fontFamily: 'MarkPro',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.4,
                  letterSpacing: -0.24,
                  color: Color(0xFF0E0E0E),
                ),
                children: [
                  TextSpan(
                    text: 'DO-IT',
                    style: TextStyle(
                      fontFamily: 'MarkPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: -0.24,
                      color: Color(0xFF217AC0),
                    ),
                  ),
                  TextSpan(
                    text: ' account',
                  ),
                ],
              ),
            ),
            AppTextField(
              hintText: 'Name',
              textInputType: TextInputType.name,
            ),
            AppTextField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            AppTextField(
              hintText: 'Mobile Number',
              textInputType: TextInputType.phone,
              suffixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    AppImages.nigeriaFlag,
                    height: 24,
                    width: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 12),
                    child: CustomPaint(
                      painter: TrianglePainter(
                        strokeColor: const Color(0xFFE9EBEE),
                        strokeWidth: 10,
                        paintingStyle: PaintingStyle.fill,
                      ),
                      child: const SizedBox(
                        height: 14,
                        width: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppTextField(
              hintText: 'Password',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            Text(
              'Password must be at least 8 characters',
              style: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.6,
                  letterSpacing: -0.24),
            ),
            SizedBox(
              height: 50,
            ),
            AppButton(
              title: "Create account",
              onPressed: () {},
            ),
            const Center(
              child: Text(
                'Privacy policy',
                style: TextStyle(
                    color: Colors.transparent,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.83,
                    letterSpacing: 0.24,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                    decorationColor: Color(0xFFC4C4C4),
                    decorationStyle: TextDecorationStyle.solid,
                    shadows: [
                      Shadow(
                        color: Color(0xFFC4C4C4),
                        offset: Offset(0, -2),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
