import 'dart:async';

import 'package:flutter/material.dart';
class Module13class2 extends StatefulWidget {
   Module13class2({super.key}){
    print('1 Constructor');
  }

  @override
  State<Module13class2> createState() {
    print('2 createState');

    return _Module13class2State();
  }
}

class _Module13class2State extends State<Module13class2> {

  String name = 'Taufiq';
  int seconds = 0;
  Timer ? time;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('3 initState');
    name = 'abc';
    seconds = 10;

    time = Timer.periodic(Duration(seconds: 1), (time){
      setState(() {
        seconds++;
      });
    });

  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('4 didChangeDependencies');

  }

  @override
  Widget build(BuildContext context) {
    print('5 build called');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: TextStyle(fontSize: 35),),
            Text('Time running: ${seconds}',style: TextStyle(fontSize: 35),),
            ElevatedButton(onPressed: (){
              name = 'karim';
            }, child: Text('Change name'))

          ],
        ),
      ),
    );
  }
  @override
  void didUpdateWidget(covariant Module13class2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);


  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
