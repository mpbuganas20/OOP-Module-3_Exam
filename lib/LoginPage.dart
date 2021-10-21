import 'package:flutter/material.dart';
import 'Dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController userController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void login(String username, String password) {
      if (username == "admin" && password == "admin") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Dashboard()));
      } else {
        final snackBar = const SnackBar(
            backgroundColor: Color(0xFFD50000),
            content: Text("Error: Please use admin credentials for login.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w900)));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Login Screen.'),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: ListView(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    padding: const EdgeInsets.only(bottom: 25),
                  ),
                  
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
                  
                  const Padding(padding: EdgeInsets.all(15)),
                  
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                  
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 75,
                      width: 100,
                      margin: const EdgeInsets.all(25),
                      child: ElevatedButton(
                        child:
                            const Text('Login', style: TextStyle(fontSize: 16)),
                        onPressed: () {
                          login(userController.text, passwordController.text);
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(15)),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF2196F3)),
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ])));
  }
}
