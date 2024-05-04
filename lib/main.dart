// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mail_box/pages/login.dart';
import 'package:mail_box/pages/mailbox.dart';
import 'package:mail_box/pages/mailboxscreen.dart';
import 'package:mail_box/pages/meet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Mailbox App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes:{
        '/mailboxscreen':(context) => MailboxScreen(),
        '/mailbox':(context) => Mailbox(),
        '/meet':(context) => Meet(),
      },

    );
  }
}
