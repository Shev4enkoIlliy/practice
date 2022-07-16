import 'package:flutter/material.dart';

class Mountain_CustomPainter extends StatefulWidget {
  const Mountain_CustomPainter({Key? key}) : super(key: key);

  @override
  State<Mountain_CustomPainter> createState() => _Mountain_CustomPainterState();
}

class _Mountain_CustomPainterState extends State<Mountain_CustomPainter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomPaint(
          painter: MountainBackground(),
          child: Stack(
            children: const <Widget>[],
          ),
        ),
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
                colors: [
             // Colors.deepOrange,
              Colors.deepOrange,
              Colors.orangeAccent,
            ], begin: Alignment.bottomLeft, end: Alignment.bottomRight)),
      ),
    );
  }
}

class MountainBackground extends CustomPainter {
  @override //     холст       размер
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    var paint = Paint();



    Path mountainPath1 = Path();
    mountainPath1.lineTo(0, h * 0.40);
    mountainPath1.cubicTo(w * 0.40, h * 0.36, w * 0.20, h * 0.39, w * 0.50, h * 0.37);
    mountainPath1.cubicTo(w * 0.60, h * 0.37, w* 0.80, h * 0.35, w, h * 0.39);
    mountainPath1.cubicTo( w + (w + 0.3), h + (h + 1.0), w, h, 0, h);
    paint.color = Colors.deepOrange.shade200; //.shade100;
    mountainPath1.close();
    canvas.drawPath(mountainPath1, paint);

    Path mountainPath = Path();
   mountainPath.lineTo(0, h * 0.25);
   mountainPath.cubicTo(w * 0.20, h * 0.30, w * 0.12, h * 0.32, w * 0.35, h * 0.32);
   mountainPath.cubicTo(w * 0.50, h * 0.40, w* 0.80, h * 0.35, w, h * 0.43);
   mountainPath.cubicTo( w + (w + 0.3), h + (h + 1.0), w, h, 0, h);
    paint.color = Colors.deepOrange.shade300; //.shade100;
    mountainPath.close();
    canvas.drawPath(mountainPath, paint);

    Path secontMoun = Path();
    secontMoun.lineTo(0, h * 0.33);
    secontMoun.cubicTo(w * 0.20, h * 0.32, w * 0.12, h * 0.40, w * 0.40, h * 0.39);
    secontMoun.cubicTo(w * 0.65, h * 0.44, w* 0.78, h * 0.36, w, h * 0.40);
    secontMoun.cubicTo( w + (w + 0.3), h + (h + 1.0), w, h, 0, h);
    paint.color = Colors.deepOrange.shade400;
    secontMoun.close();
    canvas.drawPath(secontMoun, paint);

    Path shortMount = Path();
    shortMount.lineTo(0, h * 0.65);
    shortMount.cubicTo(w * 0.50, h * 0.55, w * 0.70, h * 0.50, w * 0.99, h * 0.55 );
    shortMount.cubicTo(w + (w + 1.0), h * 0.80, w + (w + 0.3), h + (h + 1.0), w, h, );
    shortMount.quadraticBezierTo( w, h, 0, h);
    paint.color = Colors.deepOrange.shade300;
    secontMoun.close();
    canvas.drawPath(shortMount, paint);

    Path lastMount = Path();
    lastMount.lineTo(0, h * 0.50);
    lastMount.cubicTo(w * 0.10, h * 0.46, w * 0.13, h * 0.55, w * 0.40, h * 0.50);
    lastMount.cubicTo(w * 0.70, h * 0.50, w* 0.69, h * 0.59, w, h * 0.53);
    lastMount.cubicTo( w + (w + 0.3), h + (h + 1.0), w, h, 0, h);
    paint.color = Colors.blueGrey.shade600;
    lastMount.close();
    canvas.drawPath(lastMount, paint);


    Path lastMount1 = Path();
    lastMount1.lineTo(0, h * 0.60);
    lastMount1.cubicTo(w * 0.10, h * 0.66, w * 0.13, h * 0.69, w * 0.40, h * 0.66);
    lastMount1.cubicTo(w * 0.75, h * 0.66, w* 0.73, h * 0.69, w, h * 0.75);
    lastMount1.cubicTo( w + (w + 0.3), h + (h + 1.0), w, h, 0, h);
    paint.color = Colors.blueGrey.shade600;
    lastMount1.close();
    canvas.drawPath(lastMount1, paint);


    Path lastMount2 = Path();
    lastMount2.lineTo(0, h * 0.70);
    lastMount2.cubicTo(w * 0.5, h * 0.77, w * 0.14, h * 0.70, w * 0.54, h * 0.85);
    lastMount2.cubicTo(w * 0.75, h * 0.90, w* 0.73, h * 0.87, w, h * 0.90);
    lastMount2.cubicTo( w + (w + 0.3), h + (h + 1.0), w, h, 0, h);
    paint.color = Colors.blueGrey.shade900;
    lastMount2.close();
    canvas.drawPath(lastMount2, paint);



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return false;
  }
}
