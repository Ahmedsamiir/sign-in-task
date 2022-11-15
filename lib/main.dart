import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:registertask/shared/themes/theme.dart';

import 'Screens/phone_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: PhoneScreen(),
    );
  }
}
