import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liberty/app/modules/home/bloc/home_bloc.dart';
import 'package:liberty/app/modules/home/children/create_project/bloc/create_project_bloc.dart';
import 'package:liberty/app/modules/home/children/project/bloc/project_bloc.dart';
import 'package:liberty/app/modules/landing/bloc/landing_bloc.dart';
import 'package:liberty/route/pages.dart';
import 'package:liberty/route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LandingBloc()..add(OnLandingEvent()),
        ),
        BlocProvider(
          create: (_) => HomeBloc()..add(OnHomeInitEvent()),
        ),
        BlocProvider(
          create: (_) => ProjectBloc()..add(OnProjectInitEvent()),
        ),
        BlocProvider(
          create: (_) => CreateProjectBloc()..add(OnCreateProjectInitEvent()),
        ),
      ],
      child: MaterialApp(
        title: 'Liberty',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        // scaffoldMessengerKey: scaffoldMessenger,
        initialRoute: AppRoutes.landingPage,
        routes: AppPages.page,
      ),
    );
  }
}
