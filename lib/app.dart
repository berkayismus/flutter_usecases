import 'package:flutter/material.dart';
import 'package:flutter_usecases/ignoring_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Usecases',
      home: IgnoringPage(),
    );
  }
}
