import 'package:flutter/material.dart';
import 'package:main_ui/task1/task1.dart';
import 'package:main_ui/task12/task12.dart';
import 'package:main_ui/task6/task6.dart';
import 'package:main_ui/task7/task7.dart';
import 'package:main_ui/task8/task8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Task12(),
    );
  }
}
