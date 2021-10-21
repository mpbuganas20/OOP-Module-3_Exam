import 'package:flutter/material.dart';
import 'LoginPage.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF90CAF9),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Authentication'),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: const Color(0xFF90CAF9),
              child: SizedBox(
                height: 200,
                width: 400,
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                    ))),
              ),
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ));
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(15)),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF03A9F4))),
              ),
            ),
          ],
        ));
  }
}