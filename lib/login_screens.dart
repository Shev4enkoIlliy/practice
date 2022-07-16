import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyLayout());
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
              SizedBox(height: 10),
              _logIn(),
              _logIn(),
              _logIn(),
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

  _logIn() {
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
            child: const TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _SignUp() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: InkWell(
          onTap: () {},
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
