import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, bottom: 5, top: 5),
              child: Container(
                child: TextField(
                  controller: nameController,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
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
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, bottom: 5, top: 5),
              child: Container(
                child: TextField(
                  controller: emailController,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
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
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, bottom: 5, top: 5),
              child: Container(
                child: TextField(
                  controller: passwordController,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
