import 'package:flutter/material.dart';
import 'package:practice/log_in/Lon_in_widget.dart';
import 'package:practice/log_in/Second_Route.dart';

import 'Second_Route.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: MyLayout(),
        routes: {
          '/secondRoute': (context) => SecondRoute(),

        },
    );
  }
}

class MyLayout extends StatefulWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _arrow(),
              _getText(),
              SizedBox(height: 40),
              LogIn_StatefullWidget(),
              _getText2(),
              const SizedBox(
                height: 30,
              ),
              _SignUp(),
              const SizedBox(
                height: 90,
              ),
              _getText3(),
              _getIcons(),

            ],
          ),
        ));
  }

  _arrow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(child: const Icon(Icons.arrow_back_ios)),
            ),
          ],
        ),
      ),
    );
  }
  _getText() {
    return Padding(
      padding: const EdgeInsets.only(right: 180.0, left: 10),
      child: Container(
        child: const Text(
          'Sign up',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 40,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }


  _SignUp() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: InkWell(
          onTap: () {
            List<TextEditingController> list = [];


            Navigator.pushNamed(context, '/secondRoute');
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
              child: Text(
                'Sing up',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 25),
              ),
            ),
          )),
    );
  }

  _getText2() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        child: Row(
          children: const [
            SizedBox(width: 150),
            Text('Already have an account?', style: TextStyle(fontSize: 13)),
            Icon(
              Icons.arrow_right_alt_outlined,
              color: Colors.brown,
            )
          ],
        ),
      ),
    );
  }

  _getText3() {
    return Center(
      child: Container(
        child: const Text('Or Sign up with social account',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
      ),
    );
  }

  _getIcons() {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, right: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 80,
              child: Icon(Icons.dangerous),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 3),
                        blurRadius: 4.0),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 60,
              width: 80,
              child: Icon(Icons.dangerous),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 3),
                        blurRadius: 4.0),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

}
class Person {
  final String name;
  final int age;
Person({required this.name, required this.age});
}

