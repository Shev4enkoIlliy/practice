import 'package:flutter/material.dart';
import 'package:practice/animation_navigation_bar/navigation_bar.dart';
import 'package:practice/custom_painter/painter.dart';

import 'package:practice/custom_painter/custom_painter.dart';
import 'package:practice/custom_painter/clip_path.dart';

import '../custom_painter/mountain_custom_painter.dart';
import '../custom_painter/practice_customPainter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MyActivity(
     // home: NavigationBarBottom(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignIn(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  _getHeader(),  //заголовки
                  _getInputs(),  //входы
                  _getSignIn(),   //войти
                  _getBottomRow(),  //нижний рядок
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

_getHeader() {
  return Expanded(
    flex: 3,
    child: Container(
      alignment: Alignment.bottomRight,
      child: const Text(
                                                              'Добро пожаловать',
        style: TextStyle(color: Colors.white, fontSize: 37),
      ),
    ),
  );
}
_getInputs() {
  return Expanded(  //  ?
    flex: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Логин'),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Пароль'),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    ),
  );
}
_getSignIn() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          'Вход',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          radius: 40,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
_getBottomRow() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const <Widget>[
        Text(
          'Регистрация',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        ),
        Text(
          'Забыли пароль',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        )
      ],
    ),
  );
}

class BackgroundSignIn extends CustomPainter {   //пользовательский художник
  @override//     холст       размер
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint(); //  краска


    //Это белая подложка под все мои элементы
    Path mainBackground = Path();  //   дорожка
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));  //добавить прямоугольник
    paint.color = Colors.grey.shade100;  //цвет типо подложки которая рисуется на весь экран
    canvas.drawPath(mainBackground, paint);  //рисую это на холсте

    // Blue
    Path blueWave = Path();  // Синяя дорожка
    blueWave.lineTo(sw, 0);  //точка старта линии
    blueWave.lineTo(sw, sh );    //от левого верха до правого низа
    blueWave.quadraticBezierTo(sw * 1, sh * 0.45, sw * 0.2, 0);

    blueWave.close();
    paint.color = Colors.blue.shade300;
    canvas.drawPath(blueWave, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
