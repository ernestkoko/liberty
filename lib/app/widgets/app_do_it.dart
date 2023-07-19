import 'package:flutter/material.dart';

import '../../core/app_images.dart';

class AppDoIt extends StatelessWidget {
  const AppDoIt({this.top,Key? key}) : super(key: key);
  final double? top;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.only(top: top??30),
        child: Container(
          height: 60,
          // color: Colors.black87,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.passthrough,
            children: [
              Positioned(
                top: -12.5,
                right: MediaQuery.of(context).size.width * 0.52,
                child: Image.asset(
                  AppImages.fourDots,
                  height: 33,
                  width: 23,
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.40,
                child: Text.rich(
                  TextSpan(
                    text: 'DO',
                    style: const TextStyle(
                      fontFamily: 'MarkPro',
                      fontWeight: FontWeight.w700,
                      fontSize: 33,
                      height: 0.69,
                      shadows: [
                        Shadow(
                          color: Color(0xFF217AC0),
                          offset: Offset(0, -3),
                        ),
                      ],
                      color: Colors.transparent,
                    ),
                    children: [
                      TextSpan(
                        text: '-IT',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                          shadows: [
                            const Shadow(
                              color: Color(0xFF217AC0),
                              offset: Offset(0, -3),
                            )
                          ],
                          color: Colors.transparent,
                          fontFamily: 'MarkPro',
                          fontWeight: FontWeight.w700,
                          fontSize: 33,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1,
                          decorationColor: const Color(0xFF217AC0),
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
