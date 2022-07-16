import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practice/custom_painter/mountain_custom_painter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyCurved_Navigation_Bar(),
    );
  }
}

class MyCurved_Navigation_Bar extends StatefulWidget {
  const MyCurved_Navigation_Bar({Key? key}) : super(key: key);

  @override
  State<MyCurved_Navigation_Bar> createState() =>
      _MyCurved_Navigation_BarState();
}

class _MyCurved_Navigation_BarState extends State<MyCurved_Navigation_Bar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  var color = Colors.blueGrey.shade900;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30, color: Colors.white70,),
      const Icon(Icons.search, size: 30, color: Colors.white70,),
      const Icon(Icons.favorite, size: 30, color: Colors.white70,),
      const Icon(Icons.add, size: 30, color: Colors.white70,),
      const Icon(Icons.person, size: 30, color: Colors.white70,),
    ];

    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('CurvedNavigationBar'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.black,
          backgroundColor: Colors.transparent,
          key: _bottomNavigationKey,
          items: items,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
    ),
      body:  const Mountain_CustomPainter(
      ),

      //   const Center(
    // child: Text(
    // 'CurvedNavigationBar',
    //   style: TextStyle(
    //       color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
    // ),
    // )
    );
  }
}



