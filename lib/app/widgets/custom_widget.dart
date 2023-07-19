import 'package:flutter/material.dart';
import 'package:liberty/core/app_images.dart';

class AppCustomWidget extends StatelessWidget {
  AppCustomWidget({this.image,Key? key}) : super(key: key);
  Widget? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Liberty pay Loan App',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.24,
                    height: 1.26,
                    color: Color(0xFF373737)),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFF0184D6),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(2)),
                child: const Center(
                  child: Text(
                    '4d',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.24,
                        height: 1.26,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Team members',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        letterSpacing: -0.24,
                        height: 2),
                  ),
                  Container(
                    margin:const  EdgeInsets.only(top: 8, bottom: 10),
                    child: Row(
                      children: [
                        Image.asset(AppImages.person1, width: 24,),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                            child: Image.asset(AppImages.person2, width: 24,)
                        ),
                       Image.asset(AppImages.person3, width: 24,)
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          // padding: EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 20),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFE3DE),
                            shape: BoxShape.circle,
                          ),
                          child: const SizedBox(
                              height: 10.93,
                              child: Icon(
                                Icons.calendar_month,
                                size: 10.93,
                                color: Color(0xFFFF7561),
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Start',
                              style: TextStyle(
                                fontSize: 5,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.24,
                                height: 2,
                                color: Color(0xFFF30909),
                              ),
                            ),
                            Text(
                              '27-3-2022',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.24,
                                height: 2,
                                color: Color(0xFF4E4E4E),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'End',
                                style: TextStyle(
                                  fontSize: 5,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.24,
                                  height: 2,
                                  color: Color(0xFF009A49),
                                ),
                              ),
                              Text(
                                '27-3-2022',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.24,
                                  height: 2,
                                  color: Color(0xFF4E4E4E),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green)),
                child: const Text('40%'),
              )
            ],
          )
        ],
      ),
    );
  }
}
