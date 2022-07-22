import 'package:flutter/material.dart';

class LogIn_Widget extends StatelessWidget {
  final String text;
  var controller1;

  LogIn_Widget({
    Key? key,
    required this.text,
    required this.controller1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 330,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 3),
                  blurRadius: 8.0),
            ]),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5, top: 5),
          child: Container(
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: text,
                labelStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogIn_StatefullWidget1 extends StatefulWidget {
  const LogIn_StatefullWidget1({Key? key}) : super(key: key);

  @override
  State<LogIn_StatefullWidget1> createState() => _LogIn_StatefullWidgetState1();
}

class _LogIn_StatefullWidgetState1 extends State<LogIn_StatefullWidget1> {
  final myControllerName = TextEditingController();

  @override
  void dispose() {
    myControllerName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogIn_Widget(text: 'Name', controller1: myControllerName),
      ],
    );
  }
}
