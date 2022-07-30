// ignore_for_file: prefer_const_constructors

import 'package:firebase_authentication/screens/home.dart';
import 'package:firebase_authentication/screens/signIn.dart';
import 'package:firebase_authentication/screens/signUp.dart';
import 'package:firebase_authentication/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Authentication",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: const SignUp()),
      initialRoute: MyRoute.signUpRoute,
      routes: {
        MyRoute.homeRoute: (context) => Home(),
        MyRoute.signInRoute: (context) => SignIn(),
        MyRoute.signUpRoute: (context) => SignUp(),
      },
    );
  }
}
