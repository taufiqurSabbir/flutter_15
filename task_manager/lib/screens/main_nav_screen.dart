import 'package:flutter/material.dart';
import 'package:task_manager/screens/cancel_task_screen.dart';
import 'package:task_manager/screens/completed_task_screen.dart';
import 'package:task_manager/screens/new_task_screen.dart';
import 'package:task_manager/screens/progress_task_screen.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _selectedIndex = 0;

  List _screens = [
    NewTaskScreen(),
    ProgressTaskScreen(),
    CompletedTaskScreen(),
    CancelTaskScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TmAppbar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,

          onDestinationSelected: (int index){
          setState(() {
            _selectedIndex = index;
          });
          },

          destinations: [
            NavigationDestination(icon: Icon(Icons.task), label: 'New'),
            NavigationDestination(icon: Icon(Icons.refresh), label: 'Progress'),
            NavigationDestination(icon: Icon(Icons.task_alt_outlined), label: 'Completed'),
            NavigationDestination(icon: Icon(Icons.cancel_outlined), label: 'Cancel'),
          ]),
    );
  }
}
