// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mail_box/utility/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  
   DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,});
    

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        backgroundColor: Colors.blue,
        content: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Get user input
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new task',
                ),
              ),
              // buttons => save and cancel
            
                
                Padding(
                  padding: const EdgeInsets.only(left:30.0, top:8.0),
                  child: Row(children: [
                    // save button
                    MyButton(text: 'Save', onPressed: onSave),
                    // cancel button
                    MyButton(text: 'Cancel', onPressed: onCancel),
                            
                  ],),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}