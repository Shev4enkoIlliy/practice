import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MyWaveClipper(
      // home: NavigationBarBottom(),
    );
  }
}

class MyWaveClipper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("Wave Clipper Design"),
            backgroundColor: Colors.redAccent
        ),
         body:
      Container(
            child:Stack(children: <Widget>[ //стек перекрывает виджеты

              // Opacity( //полукрасный clippath с большей высотой и непрозрачностью 0,5
              //   opacity: 0.5,
              //   child: ClipPath(   //обрезать путь
              //     clipper:WaveClipper(), //установить наш пользовательский клипер волны
              //     child:Container(
              //       color:Colors.deepOrangeAccent,
              //       height:200,
              //     ),
              //   ),
              // ),


              //это красный сонтейнер с надписью обрезанный по нужным размерам
              ClipPath(  //upper clippath with less height
                clipper:WaveClipper(), //set our custom wave clipper.
                child:Container(
                    padding: EdgeInsets.only(bottom: 50),
                    color:Colors.red,
                    height:180,
                    alignment: Alignment.center,
                    child: const Text("Wave clipper", style: TextStyle(
                      fontSize:18, color:Colors.white,
                    ),)
                ),
              ),
            ],)
        )
    );
  }
}



//Пользовательский класс CLipper с путем
class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = new Path();

    path.lineTo(0, size.height); //начните путь с этого, если вы делаете внизу

    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 55.0);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);



    var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondEnd = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);


    path.lineTo(size.width, 0); //заканчивайте этот путь, если вы делаете волну внизу
     path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}