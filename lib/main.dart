import 'package:first_app/home_Page.dart';
import 'package:first_app/social.dart';
import 'package:first_app/widgets/button_widget.dart';
import 'package:first_app/widgets/rowcoloumn.dart';
import 'package:first_app/widgets/text.dart';
import 'package:first_app/widgets/text_field.dart';
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
      
    //  title: "Demo",
      // home: ButtonWidget(),
      // home: HomePage()
      home: SocialWidget()
      // home: TextWidget(),
      // home: RowWidget(),
      // home: MyWidget(),
   

    );
  }
}
