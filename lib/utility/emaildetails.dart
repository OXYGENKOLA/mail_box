import 'package:flutter/material.dart';
import 'package:mail_box/pages/messagetiles.dart';
import 'package:mail_box/utility/mail.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({super.key, required this.email});

  final Email email;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InboxTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('lib/images/${email.senderImage}'),
        ),
        title: Text(email.senderName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(email.title),
            Text(
              email.message,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            )
          ],
        ),
        trailing: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                email.time,
                style: const TextStyle(fontSize: 10),
              ),
              const SizedBox(
                height: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star_border_outlined,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}