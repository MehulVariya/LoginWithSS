import 'package:flutter/material.dart';
import 'package:loginnew/ui/sign_in/SignIn.dart';
import 'package:loginnew/ui/sign_up/SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignIn(),
      routes: {"/SignUp": (context) => const SignUp()
      }
    );
  }
}

