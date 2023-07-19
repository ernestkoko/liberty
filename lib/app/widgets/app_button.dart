import 'package:flutter/material.dart';

import '../../core/app_images.dart';

class AppButton extends StatelessWidget {
  const AppButton({this.onPressed, required this.title, Key? key})
      : super(key: key);
  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 10),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF217AC0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          child: Text(title,
              style: const TextStyle(
                color: Color(0xFFFDFDFF),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.3
              )),
        ),
      ),
    );
  }
}

class AppBackButton extends StatelessWidget {
  AppBackButton({this.onPressed, Key? key}) : super(key: key);
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFF4F4F6),
              )),
          child: IconButton(
              padding: const EdgeInsets.all(8),
              onPressed: onPressed ??
                  () {
                    Navigator.of(context).pop();
                  },
              icon: Image.asset(
                AppImages.back,
                width: 24,
                height: 24,
              )),
        ),
      ],
    );
  }
}
