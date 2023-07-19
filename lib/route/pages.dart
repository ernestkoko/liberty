import 'package:liberty/app/modules/auth/auth.dart';
import 'package:liberty/app/modules/home/children/project/project.dart';
import 'package:liberty/app/modules/home/home.dart';
import 'package:liberty/app/modules/signin/signin.dart';
import 'package:liberty/route/routes.dart';
import '../app/modules/landing/landing.dart';

abstract class AppPages {
  static final page = {
   AppRoutes.landingPage: (_) => const LandingPage(),
    AppRoutes.authPage: (_) => const AuthPage(),
    AppRoutes.signinPage: (_) => const SigninPage(),
    AppRoutes.homePage: (_) => const HomePage(),
    AppRoutes.projectPage: (_) => const ProjectPage(),
  };
}