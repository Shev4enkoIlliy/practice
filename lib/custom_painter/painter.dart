import 'package:flutter/material.dart';

class CustomPainti extends StatelessWidget {
  const CustomPainti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Center(
        child: Container(
          color: Colors.green,
          width: 400,
          height: 400,
          child: CustomPaint(foregroundPainter: LinePinter()),
        ),
      ),
    );
  }
}

class LinePinter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //создал краску и определил параметры

    
   final Paint paint = Paint()
     ..color = Colors.greenAccent
     ..strokeWidth= 20        //ширина стенки моего элемента
     ..style = PaintingStyle.stroke;

    //arc - дуга
   final path = Path();  //путь
   path.moveTo(size.width * 1/18, size.height * 0.3);
   path.arcToPoint(Offset(size.width * 3/8, size.height * 1/14),
   radius: Radius.circular(180),
   //  clockwise: false  // закругление в обратеую сторону
   );
   canvas.drawPath(path, paint); //рисовать путь






   final center = Offset(size.width / 2, size.height / 2);
   canvas.drawCircle(center, size.width * 1 / 4, paint);

   canvas.drawCircle(center, size.width * 4/10, paint);

   final a = Offset(size.width * 1/4, size.height * 1/4);
   final b = Offset(size.width * 3/4, size.height * 3/4);
   final rect = Rect.fromPoints(a, b);

   final radius =  Radius.circular(20);
   canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);


   
   
  // final a = Offset(size.width * 1/4 , size.height * 1/4);
  // final b = Offset(size.width * 3/4 , size.height * 3/4);
  // final rect = Rect.fromPoints(a, b);  //  -создал рбъект рисования(прямоугольник) , определяю кординаты a, b
 //  final radius = Radius.circular(32);
  // canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);        //рисую прямоугольник на холсте
    //в коструктор передаю объект рисования и краску


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}

