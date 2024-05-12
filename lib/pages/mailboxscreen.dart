// ignore_for_file: unused_element, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mail_box/pages/mailbox.dart';
import 'package:mail_box/pages/meet.dart';

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
      body: _pages[_selectedIndex],
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