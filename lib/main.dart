import 'package:first_app/widgets/rowcoloumn.dart';
import 'package:flutter/material.dart';
import './widgets/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo",
      home: RowWidget(),
      // home: MyWidget(),
   

    );
  }
}
