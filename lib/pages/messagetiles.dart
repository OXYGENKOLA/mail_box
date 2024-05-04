// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(BuildContext)? deleteFunction;

   MessageTile({
    super.key, 
    required this.taskName, 
    required this.taskCompleted, 
    required this.deleteFunction,
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:30, right: 30, top: 30),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(10),
            )
          ],),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              // Task name
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskCompleted 
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
                  ),
                ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12)
            ),
        ),
      ),
    );
  }
}