// ignore_for_file: unused_element, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mail_box/pages/login.dart';
import 'package:mail_box/pages/mailbox.dart';
import 'package:mail_box/pages/meet.dart';
import 'package:mail_box/pages/emailsender.dart';
import 'package:mail_box/pages/sent.dart';

class MailboxScreen extends StatefulWidget {
  const MailboxScreen({super.key});

  @override
  State<MailboxScreen> createState() => _MailboxScreenState();
}

class _MailboxScreenState extends State<MailboxScreen> {
  // this keeps track of the selected index
  int _selectedIndex = 0;

  // this method update the new selected indedx
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // Mail page
    const Mailbox(),
    // Meet page
    const Meet(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mail Box'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  image: DecorationImage(
                    image: AssetImage("images/logo.jpg"),
                  ),
                ),
                child: Text("Mails"),
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: const Text('Inbox'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MailboxScreen(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.outbox),
                title: const Text('Sent'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SentMessages(),
                      ));
                },
              ),
              ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  }),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const EmailSender(),
              ));
        },
        child: const Icon(Icons.edit),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          // Mailbox
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Mailbox',
          ),
          // Meet
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_front),
            label: 'Meet',
          ),
        ],
      ),
    );
  }
}
