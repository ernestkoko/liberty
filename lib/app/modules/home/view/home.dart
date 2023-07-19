import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liberty/app/modules/home/bloc/home_bloc.dart';
import 'package:liberty/app/modules/home/children/create_project/create_project.dart';
import 'package:liberty/app/modules/home/children/project/project.dart';
import 'package:liberty/core/app_images.dart';

import '../../../widgets/custom_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeIniState) {
            return Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                Positioned(
                  bottom: -20,
                  left: 0,
                  right: 0,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(OnHomeCreateProjectEvent());
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF217AC0),
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        const Color(0xFF217AC0),
                      ),
                      shape: MaterialStateProperty.all<CircleBorder>(
                        const CircleBorder(
                          side: BorderSide(
                            strokeAlign: StrokeAlign.outside,
                            width: 9,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFFFFFFFF),
                      size: 50,
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const Text('');
          }
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      bottomNavigationBar: Container(
        height: 70,
        // color: Colors.redAccent,
        color: const Color(0xFFF3FAFF),
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(OnHomeInitEvent());
                    },
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if(state is HomeIniState){
                          return const  Icon(
                            Icons.home,
                            color: Color(0xFF217AC0),
                            size: 30,
                          );
                        } else {
                          return const  Icon(
                            Icons.home_outlined,
                            color: Color(0xFF217AC0),
                            size: 30,
                          );
                        }

                      }
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(OnHomeProjectEvent());
                    },
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if(state is HomeProjectState || state is HomeCreateProjectState) {
                          return Image.asset(
                            AppImages.zohoThick,
                            height: 30,
                            width: 30,
                            // color: Colors.blueAccent,
                          );
                        } else {
                          return Image.asset(
                            AppImages.zoho,
                            height: 30,
                            width: 30,
                            // color: Colors.blueAccent,
                          );
                        }
                      }
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.perm_identity_outlined,
                      color: Color(0xFF217AC0),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        if (state is HomeIniState) {
          return _initPage();
        } else if (state is HomeProjectState) {
          return const ProjectPage();
        } else if (state is HomeCreateProjectState) {
          return const CreateProjectPage();
        } else {
          return const Center(
            child: Text('Not implemented yet!'),
          );
        }
      }),
    );
  }

  Widget _initPage() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      color: const Color(0xFFFFFFFF),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text.rich(
                      TextSpan(
                        text: 'Hi Dexter \n',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Color(0xFF000000),
                            letterSpacing: -0.24,
                            height: 1.16),
                        children: [
                          TextSpan(
                            text: 'Welcome onboard',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFF217AC0),
                              letterSpacing: -0.24,
                              height: 1.16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xFFECF1FF),
                        shape: BoxShape.circle,

                      ),
                      child: Stack(
                        fit: StackFit.passthrough,
                        clipBehavior: Clip.none,
                        children: [
                          const Positioned(
                            child: Icon(
                              Icons.add_alert,
                              color: Color(0xFF217AC0),
                              size: 29,
                            ),
                          ),
                          Positioned(
                            right: 2,
                            top: 2,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.redAccent),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    _customBox(
                      color: const Color(0xFFFCF4F0),
                      title: "Project",
                      number: '14',
                      childBackgroundColor: const Color(0xFFF7A325),
                      child: Image.asset(
                        AppImages.zoho,
                        color: Colors.white,
                        height: 24,
                        width: 24,
                      ),
                    ),
                    _customBox(
                      color: const Color(0xFFF4F9FF),
                      right: true,
                      title: "Tasks",
                      number: '24',
                      childBackgroundColor:const  Color(0xFF217AC0),
                      child: Image.asset(
                        AppImages.task,
                        color: Colors.white,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    _customBox(
                        color: const Color(0xFFE9FFF0),
                        title: "Complete Task",
                        bottom: true,
                        number: '12'),
                    _customBox(
                      color: const Color(0xFFF4F1F6),
                      right: true,
                      bottom: true,
                      title: "Overdue Task",
                      number: '2',
                      childBackgroundColor:const  Color(0xFFD1D1D1),
                      child: Image.asset(
                        AppImages.overTask,
                        color: Colors.black87,
                        height: 24,
                        width: 24,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24),
              margin: EdgeInsets.only(top: 30),
              color: const Color(0xFFF8F8F8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Task in Progress',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.9,
                          letterSpacing: -0.24,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.9,
                          color: Color(0xFF217AC0),
                          letterSpacing: -0.24,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        AppCustomWidget(),
                        AppCustomWidget(),
                        AppCustomWidget()
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _customBox(
      {required Color color,
      required String title,
      required String number,
      bool right = false,
      bool bottom = false,
      Widget? child,
      Color? childBackgroundColor}) {
    return Expanded(
      child: Container(
        height: 128,
        margin: EdgeInsets.only(
            right: right ? 0 : 6,
            left: right ? 6 : 0,
            top: bottom ? 6 : 0,
            bottom: bottom ? 0 : 6),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: childBackgroundColor ?? Colors.green,
                    border: const Border(),
                  ),
                  child: child ??
                      const Icon(
                        Icons.task_alt,
                        color: Colors.white,
                      ),
                ),
                Text(
                  number,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.24),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.24),
                ),
                const Text(''),
              ],
            )
          ],
        ),
      ),
    );
  }
}
