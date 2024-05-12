// ignore_for_file: unrelated_type_equality_checks, avoid_types_as_parameter_names
import 'package:flutter/material.dart';
import 'package:mail_box/pages/mailboxscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = TextEditingController();
  final password = TextEditingController();
  void validateInput() {
    if (controller.text.contains('.com') == true && password.text.contains(RegExp(r'123'))) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MailboxScreen(),
          ));
    } else {
      // do nothing
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black12,
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 100,
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('lib/images/mylogo.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'abc@gmail.com',
                        ),
                      ),
                    ),
                     Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                      child: TextField(
                        obscureText: true,
                        controller: password,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter a secure password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                                color: Colors.lightBlue, fontSize: 20),
                          ),
                          onPressed: () {
                            validateInput();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
