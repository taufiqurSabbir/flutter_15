import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart';
import 'package:task_manager/widgets/task_card.dart';
import 'package:task_manager/widgets/tm_appbar.dart';
class CancelTaskScreen extends StatefulWidget {
  const CancelTaskScreen({super.key});

  @override
  State<CancelTaskScreen> createState() => _CancelTaskScreenState();
}

class _CancelTaskScreenState extends State<CancelTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return TaskCard(
              taskModel: TaskModel(
                  id: '56',
                  title: 'Demo task Title',
                  description: 'Demo task description',
                  status: 'Cancel',
                  email: '',
                  createdDate: '20/10/2026'),
              CardColor: Colors.red,
              refreshParent: () {},
            );
          }) ,
    );
  }
}
