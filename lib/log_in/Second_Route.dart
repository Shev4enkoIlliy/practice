import 'package:flutter/material.dart';
import 'package:practice/log_in/Lon_in_widget.dart';

import 'login_screens.dart';

class SecondRoute extends StatelessWidget {
late final Person person;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('${person.name }  - ${person.age}'),),
      body: Container(
        width: 200,
        height: 50,
        child: const Center(child: Text('Illia Programmer')),),
    );
  }
}
