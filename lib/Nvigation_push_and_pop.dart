import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Initial Rote'),),
          backgroundColor: Colors.grey,
          body: MyBody(),
        ),
        routes: {

          '/page 2': (context) => Page2(),
        }
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Page 2');
        },
        child: const Text('Page 2'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Page 2'),),
      body: Center(child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/page 1');
        }, child: const Text('Back on Page 1'),),),);
  }
}

