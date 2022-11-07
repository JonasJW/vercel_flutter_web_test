import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      urlPathStrategy: UrlPathStrategy.path,
      routes: [
        GoRoute(
            path: "/",
            builder: (context, state) => Scaffold(
                  appBar: AppBar(
                    title: Text(
                      "Landing",
                    ),
                  ),
                ),
            routes: [
              GoRoute(
                  path: "home",
                  builder: (context, state) => Scaffold(
                        appBar: AppBar(
                          title: Text(
                            "Home",
                          ),
                        ),
                      ),
                  routes: [
                    GoRoute(
                      path: "questionnaire",
                      builder: (context, state) => Scaffold(
                        appBar: AppBar(
                          title: Text(
                            "Questionnaire",
                          ),
                        ),
                      ),
                    ),
                  ]),
            ]),
      ],
    );

    return MaterialApp.router(
      title: 'Exercisable',
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
