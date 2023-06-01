import 'package:first_app/addDonator.dart';
import 'package:first_app/bloodDotation.dart';
import 'package:first_app/home_Page.dart';
import 'package:first_app/social.dart';
import 'package:first_app/widgets/Navigation.dart';
import 'package:first_app/widgets/Radiobutton.dart';
import 'package:first_app/widgets/bottomNavigationbar.dart';
import 'package:first_app/widgets/button_widget.dart';
import 'package:first_app/widgets/checkbox_widget.dart';
import 'package:first_app/widgets/rowcoloumn.dart';
import 'package:first_app/widgets/statefull_widget.dart';
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
      title: "demo",
      routes: {
         '/':(context) => const BloodDonation(),
         '/add':(context) => const AddDonator(),
        // '/':(context) => const TextWidget(),
        // '/radio':(context) => const RadioWidget()
       
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      
        
    //  title: "Demo",
    // home: BloodDonation(),
      // home: ButtonWidget(),
      // home: HomePage()
      // home: SocialWidget()
      // home: TextWidget(),
      // home: RowWidget(),
      // home: MyWidget(),
      // home: FullWidget(),
      // home: CheckWidget(),
      // home: BottomNavigationWidget(),
      // home: RadioWidget(),
      // home: Navigation(),
    
      
   

    );
  }
}
