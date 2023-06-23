import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:first_app/addDonator.dart';
import 'package:first_app/bloodDotation.dart';
import 'package:first_app/db/model/data_model.dart';
import 'package:first_app/home_Page.dart';
import 'package:first_app/social.dart';
import 'package:first_app/updateDonor.dart';
import 'package:first_app/widgets/Navigation.dart';
import 'package:first_app/widgets/Radiobutton.dart';
import 'package:first_app/widgets/bottomNavigationbar.dart';
import 'package:first_app/widgets/button_widget.dart';
import 'package:first_app/widgets/checkbox_widget.dart';
import 'package:first_app/widgets/flotingActionButton.dart';
import 'package:first_app/widgets/rowcoloumn.dart';
import 'package:first_app/widgets/statefull_widget.dart';
import 'package:first_app/widgets/text.dart';
import 'package:first_app/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './widgets/container.dart';

Future<void> main() async {
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(StudentModelAdapter().typeId))
  {
    Hive.registerAdapter(StudentModelAdapter());
  }

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demo",
      routes: {
         '/':(context) =>  FloatingAction(),
         '/add':(context) => const AddDonator(),
         '/update':(context) => const UpdateDonor()

       
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
