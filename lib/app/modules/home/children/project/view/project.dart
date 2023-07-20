import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liberty/app/modules/home/bloc/home_bloc.dart';
import 'package:liberty/app/modules/home/children/project/bloc/project_bloc.dart';
import 'package:liberty/app/widgets/app_button.dart';

import '../../../../../../route/routes.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      height: MediaQuery.of(context).size.height,
      child: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading:
              BlocBuilder<ProjectBloc, ProjectState>(builder: (context, state) {
            return AppBackButton(
              onPressed: () {
                context.read<HomeBloc>().add(OnHomeInitEvent());
              },
            );
          }),
          actions: [
            BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  context.read<HomeBloc>().add(OnHomeCreateProjectEvent());
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 0,
                    top: 15,
                    bottom: 15,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: const Color(0xFF217AC0))),
                  child: const Center(
                    child: Text(
                      'Create project',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        color: Color(0xFF217AC0),
                        // height: 3.1,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(AppRoutes.addTaskPage);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(
                      top: 12, left: 10, right: 10, bottom: 10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.only(right: 10),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF217AC0),
                                  shape: BoxShape.circle,
                                ),
                                child: const Text('l', style: TextStyle(
                                  fontFamily: 'Cagliostro-Regular',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white,

                                ),),
                              ),
                              const Text(
                                "Liberty Pay",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.24,
                                  height: 1.23,
                                  color: Color(0xFF373737),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFF009A49),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: const Text(
                              "4d",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                height: 1.27,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: const [
                              Text.rich(
                                TextSpan(
                                  text: "Start\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    color: Color(0xFFF30909),
                                    height: 2,
                                    letterSpacing: -0.24,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '27-3-2022',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        color: Color(0xFF4E4E4E),
                                        // height: 3.1,
                                        letterSpacing: -0.24,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "End\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    color: Color(0xFF009A49),
                                    height: 2,
                                    letterSpacing: -0.24,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '27-3-2022',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        color: Color(0xFF4E4E4E),
                                        // height: 3.1,
                                        letterSpacing: -0.24,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: Color(0xFF217AC0),
                                )),
                            child: SizedBox(
                              height: 20,
                              width: 45,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                        const EdgeInsets.symmetric(vertical: 1))),
                                child: const Text(
                                  'Add task',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color(0xFF217AC0),
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 200,
          ),
        ),
      ]),
    );
  }
}
