import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart';
import 'package:task_manager/utils/app_color.dart';
import 'package:task_manager/widgets/task_card.dart';
import 'package:task_manager/widgets/task_count_by_status.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 90,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return TaskCountByStatus(
                      title: 'New',
                      count: 5,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemCount: 4),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TaskCard(
                    taskModel: TaskModel(
                        id: '56',
                        title: 'Demo task Title',
                        description: 'Demo task description',
                        status: 'New',
                        email: '',
                        createdDate: '20/10/2026'),
                    CardColor: Colors.blue,
                    refreshParent: () {},
                  );
                }),
          )
        ],
      ),
    );
  }
}
