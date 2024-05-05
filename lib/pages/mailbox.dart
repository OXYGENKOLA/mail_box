import 'package:flutter/material.dart';

class Mailbox extends StatelessWidget {
  const Mailbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(child: Text('A')), // Sender's icon/initial
            title: Text('Sender Name'), // Sender's name/email
            subtitle: Text('Email subject'), // Subject line
            trailing: Icon(Icons.star_border), // Star icon
          );
        },
      ),
    );
  }
}