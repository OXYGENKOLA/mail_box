import 'package:flutter/material.dart';
import 'package:mail_box/pages/emailsender.dart';
import 'package:mail_box/pages/login.dart';
import 'package:mail_box/pages/mailboxscreen.dart';
import 'package:mail_box/pages/sent.dart';
import 'package:mail_box/utility/emaildetails.dart';
import 'package:mail_box/utility/mail.dart';

class Mailbox extends StatefulWidget {
  const Mailbox({super.key});

  @override
  State<Mailbox> createState() => _MailboxState();
}

class _MailboxState extends State<Mailbox> {
  // drawer for the menu icon
  void drawer() {
    setState(() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    width: 300,
                    child: SafeArea(
                        child: Drawer(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          const DrawerHeader(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              image: DecorationImage(
                                image: AssetImage("lib/images/mylogo.png"),
                              ),
                            ),
                            child: Text("Mails"),
                          ),
                          ListTile(
                            leading: const Icon(Icons.inbox),
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
                            leading: const Icon(Icons.outbox),
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
                              leading: const Icon(Icons.logout),
                              title: const Text('Logout'),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ));
                              }),
                        ],
                      ),
                    )),
                  ),
                )
              ],
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const EmailSender(),
                ));
          },
          label: const Text(
            'Compose',
            style: TextStyle(color: Colors.white70),
          ),
          icon: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // search row
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      drawer();
                                    },
                                    icon: const Icon(
                                      Icons.menu,
                                      color: Colors.black,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Search in mail',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              maxRadius: 18,
                              backgroundImage:
                                  AssetImage('lib/images/mylogo.png'),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Primary',
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 13,
                        ),
                      ),

                      // email lists
                      const SizedBox(height: 8),
                      Expanded(
                          child: ListView.builder(
                              itemCount: getEmails().length,
                              itemBuilder: (context, index) =>
                                  EmailCard(email: getEmails()[index])))
                    ]))));
  }
}
