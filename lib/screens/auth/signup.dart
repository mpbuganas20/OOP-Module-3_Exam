import 'package:flutter/material.dart';
import 'package:socialmediaapp/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final Authservice _authService = Authservice();

  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 8,
        title: Text("Sign Up"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: new Form(
            child: Column(children: [
          TextFormField(
              onChanged: (val) => setState(() {
                    email = val;
                  })),
          TextFormField(
              onChanged: (val) => setState(() {
                    password = val;
                  })),
          RaisedButton(
              child: Text('Sign Up'),
              onPressed: () async => {_authService.signUp(email, password)}),
          RaisedButton(
              child: Text('Sign In'),
              onPressed: () async => {_authService.signIn(email, password)})
        ])),
      ),
    );
  }
}
