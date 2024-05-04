import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:mail_box/pages/mailboxscreen.dart';
import 'package:mail_box/pages/messagetiles.dart';

class SentMessages extends StatefulWidget {
  const SentMessages({super.key});

  @override
  State<SentMessages> createState() => _SentMessagesState();
}

class _SentMessagesState extends State<SentMessages> {

  List sentList = [];
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController = TextEditingController(
    text: 'awwalolajide@gmail.com',
  );

  final _subjectController = TextEditingController(
    text: 'The subject');

  final _bodyController = TextEditingController(
    text: 'Mail body.',
  );

  
  Future<void> send(void Function() sendNewMessage) async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachments,
      isHTML: isHTML,
    );
    void sendNewMessage () {
    setState(() {
      sentList.add([email.recipients, false]);
      _recipientController.clear();
    });
    Navigator.of(context).pop();
  }

    // create New Message
    return
        send(sendNewMessage);
      

  }
  
  //delete Task

  void deleteTask (int index) {
    setState(() {
     sentList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:IconButton(
            onPressed: () {
                      Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(builder: 
                            (context) => const MailboxScreen(),
                          )
                      );    
                            },
              icon:const Icon(Icons.arrow_back), 
            ),
          title: const Text('Sent mails'),
      ),
      body:ListView.builder(
              itemCount: sentList.length,
              itemBuilder: (context, index) {
                return MessageTile(
                  taskName:sentList[index][0],
                  taskCompleted: sentList[index][1], 
                  deleteFunction: (context) => deleteTask(index),
                );
              },
            ),
    );
  }
}