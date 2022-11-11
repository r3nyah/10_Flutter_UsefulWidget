import 'package:flutter/material.dart';
import 'Src/One.dart';
import 'Src/Two.dart';
import 'Src/Three.dart';
import 'Src/Four.dart';
import 'Src/Five.dart';

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
        primarySwatch: Colors.deepPurple,
      ),
      home: Five(),
    );
  }
}
