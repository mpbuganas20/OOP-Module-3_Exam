import 'dart:io';

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:provider/provider.dart';
import 'package:socialmediaapp/compose_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:socialmediaapp/models/user.dart';
import 'package:socialmediaapp/screens/auth/signup.dart';
import 'package:socialmediaapp/screens/wrapper.dart';
import 'package:socialmediaapp/services/auth.dart';
=======
import 'LoginPage.dart';
>>>>>>> c0b31854fad7509ab83d5d536ab25683e4f06e1b

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
<<<<<<< HEAD
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          // return SomethingWentWrong();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return StreamProvider<UserModel>.value(
            value: Authservice().user,
            child: MaterialApp(home: Wrapper()),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Text(
          'loading',
          textDirection: TextDirection.ltr,
        );
      },
=======
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
>>>>>>> c0b31854fad7509ab83d5d536ab25683e4f06e1b
    );
  }
}