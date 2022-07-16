import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: MyActivity());



  }
}


class MyActivity extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        color: Colors.white70,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: AppBarCliper(),
                child: Container(
                  color: Colors.black,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tabs_CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sw = size.width;
    double sh = size.height;
    //это объект рисования
    var paint = Paint(); //то, что я должен создавать обязательно
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

_getHeager() {
  return Expanded(
    flex: 4,
    child: Container(
      width: 300,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.wifi_tethering,
              color: Colors.white70,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white70,
              )),
        ],
      ),
    ),
  );
}

class AppBarCliper extends CustomClipper<Path> {
  // @override
  // void paint(Canvas canvas, Size size) {
  //   double sw = size.width;
  //   double sh = size.height;
  //   //это объект рисования
  //   var paint = Paint();
  //
  //   Path appBarPath = Path();
  //   appBarPath.lineTo(0, 0);
  //   appBarPath.lineTo(0, sh * 0.10);
  //   appBarPath.lineTo(sw * 0.40, sh * 0.10);
  //   appBarPath.cubicTo(
  //       sw * 0.45, sh * 0.6, sw * 0.60, sh * 0.10, sw, sh * 0.10);
  //   appBarPath.quadraticBezierTo(sw, 0, 0, 0);
  //   appBarPath.close();
  //
  //   canvas.drawPath(appBarPath, paint);
  // }
  //
  // @override
  // bool shouldRepaint(covariant CustomPainter oldDelegate) {
  //   return true;
  // }
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firstPoint = Offset(size.width * 0.40, size.height);
    var secontPoint = Offset(size.width * 0.50, size.height * 0.90);
    path.quadraticBezierTo(firstPoint.dx, firstPoint.dy, secontPoint.dx, secontPoint.dy);

    var endPoint = Offset(size.width * 0.60, size.height);
    var lastPint = Offset(size.width, size.height);
    path.quadraticBezierTo(endPoint.dx, endPoint.dy, lastPint.dx, lastPint.dy);

    var endFirst = Offset(size.width, 0);
    var endEnd = Offset(0, 0);
    path.quadraticBezierTo(endFirst.dx, endFirst.dy, endEnd.dx, endEnd.dy);
    path.close();
    return path;
  }


  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
   return false;
  }


}
