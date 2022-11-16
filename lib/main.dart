import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registertask/services/auth_provider.dart';
import 'package:registertask/shared/themes/theme.dart';

import 'Screens/signIn_1.dart';

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
    return Provider<AuthProvider>(
      create: (context) => AuthProvider(),
      child: MaterialApp(
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: SignIn1(),
      ),
    );
  }
}
