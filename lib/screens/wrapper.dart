import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socialmediaapp/models/user.dart';
import 'package:socialmediaapp/screens/auth/signup.dart';
import 'package:socialmediaapp/screens/main/home.dart';
import 'package:socialmediaapp/screens/main/profile/profile.dart';

import 'main/posts/add.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    print(user);
    if (user == null) {
      //Show auth system routes
      return SignUp();
    }
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Home(),
      '/add': (context) => Add(),
      '/profile': (context) => Profile()
    });
    return Home();
  }
}
