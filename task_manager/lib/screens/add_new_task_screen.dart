import 'package:flutter/material.dart';
import 'package:task_manager/widgets/screen_background.dart';
import 'package:task_manager/widgets/tm_appbar.dart';
class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: ScreenBackground(child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            SizedBox(height: 150,),
            Text('Add New Task',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Title'
              ),
            ),
            SizedBox(height: 25,),
            TextFormField(
              maxLines: 6,
              decoration: InputDecoration(
                  hintText: 'Description'
              ),
            ),

            SizedBox(height: 25,),
            FilledButton(onPressed: (){

            }, child: Icon(Icons.arrow_circle_right_outlined)),


          ],
        ),
      )),
    );
  }
}
