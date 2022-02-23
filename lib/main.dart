import 'package:flutter/material.dart';
import 'package:web_portfolio/pages/certification_and_education.dart';
import 'pages/home_page.dart';
import 'pages/project_page.dart';
import 'package:go_router/go_router.dart';
import 'package:web_portfolio/pages/work_experience_page.dart';
import 'package:web_portfolio/pages/skills_page.dart';
import 'package:web_portfolio/pages/hobby_page.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routeInformationParser: _router.routeInformationParser,
    routerDelegate: _router.routerDelegate,
    title: 'Wesley Mbuakoto',
    theme: ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: const Color(0xFF092c9e)),

      ),
    ),
  );


  final _router = GoRouter(
    routes: [


      GoRoute(
        path: '/',
        builder: (context, state) => const Home_Page(),
      ),
      GoRoute(
        path: '/projects',
        builder: (context, state) => const project_page(),
      ),
      GoRoute(
        path: '/certifications-and-education',
        builder: (context, state) => const certification_and_education(),
      ),
      GoRoute(
        path: '/work-experience',
        builder: (context, state) => const Work_Experience_page(),
      ),
      GoRoute(
        path: '/skills',
        builder: (context, state) => Skills_page(),
      ),
      GoRoute(
        path: '/hobbies',
        builder: (context, state) => const hobby_page(),
      ),
    ],
  );

}








