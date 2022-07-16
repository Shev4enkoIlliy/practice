import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BottomNavigationBar',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),

      bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
    onTap: (index) => setState(() {
      currentIndex = index;
    }),

           items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          backgroundColor: (Colors.blueGrey)
         ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          backgroundColor: (Colors.orangeAccent)
            ),
        BottomNavigationBarItem(
            icon: Icon(Icons.help_center_outlined),
            label: 'Help',
          backgroundColor: (Colors.green),
           ),
        BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          backgroundColor: (Colors.deepPurple),
            ),
      ]),
    );
  }
}
