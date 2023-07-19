import 'package:flutter/material.dart';
import 'package:liberty/app/widgets/app_do_it.dart';
import 'package:liberty/app/widgets/app_textfield.dart';
import 'package:liberty/core/app_images.dart';

import '../../../../route/routes.dart';
import '../../../widgets/app_button.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 24, right: 24, top: 56),
        child: ListView(
          children: [
              AppBackButton(),
            const AppDoIt(top: 105,),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text(
                  "Welcome back !",
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
            ),
            const AppTextField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            const AppTextField(
              hintText: 'Password',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            const Text(
              'Forgot password?',
              style: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.6,
                  letterSpacing: -0.24),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: AppButton(
                    title: "Sign in ",
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.homePage);
                    },
                  ),
                ),
                Container(
                  height: 68,
                  width: 66,
                  margin: const EdgeInsets.only(left: 10, bottom: 8),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF217AC0),
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    AppImages.fingerPrint,
                    width: 32,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                      color: Color(0xFFDADADA),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.authPage);
                  },
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                        color: Color(0xFF217AC0),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
