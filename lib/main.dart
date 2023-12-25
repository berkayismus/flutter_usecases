import 'package:flutter/material.dart';
import 'package:flutter_usecases/test_practices/models/favorites.dart';
import 'package:flutter_usecases/test_practices/screens/favorites.dart';
import 'package:flutter_usecases/test_practices/screens/home.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// * bu projede denemek istediğim şeyleri uyguluyorum

void main() {
  runApp(
    const MyApp(),
  );
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: HomePage.routeName,
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: FavoritesPage.routeName,
          builder: (context, state) {
            return const FavoritesPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Flutter Usecases",
        routerConfig: _router,
      ),
    );
  }
}
