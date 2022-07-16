import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: test(),
  ));
}

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30.0,
        title: const Text('Custom Painter'),
        centerTitle: true,
      ),
      body: ClipPath(
        clipper: BackgroungCliper(),
        child: Container(

          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15.0),
              gradient: const LinearGradient(
                  colors: [Colors.orangeAccent, Colors.deepOrangeAccent, Colors.deepOrange],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight)),
        ),
      ),
    );
  }
}


class BackgroungCliper  extends CustomClipper<Path>{
  @override
  Path getClip(Size s) {
    double h = s.height;
     double w = s.width;
    var path = Path();
    //          x       y
    path.lineTo(0, h); //     1 point
    var firstStartPoint = Offset(w/4 - h/11, h - 60);
    var firstendPoint = Offset(w/3 , h - 90);
    path.quadraticBezierTo(firstStartPoint.dx, firstStartPoint.dy, firstendPoint.dx, firstendPoint.dy);


    var secondStart = Offset(w - (w / 1.8), h- 100);
    var secondEnd = Offset(w/2, h - 76);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    var firstLast = Offset(w - (w / 3.5), h- 5);
    var secondLast = Offset(w/1, h - 100);
    path.quadraticBezierTo(firstLast.dx, firstLast.dy, secondLast.dx, secondLast.dy);



    path.lineTo(w, 0);  //     2 point
    path.close();

    return path;
  }


  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
//
 }

// class CustomClipperShape extends CustomClipper<Path>{
//   @override
//   Path getClip(Size s) {
//     //declared the variavles
//     double h = s.height;
//     double w = s.width;
//     // created a path
//     var p = Path();
//     p.lineTo(0, h-20);
//     p.quadraticBezierTo(w/2, h+25, w, h-20);
//
//     p.lineTo(w, 0);
//     p.close();
//     return p;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
//