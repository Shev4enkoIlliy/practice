import 'package:flutter/material.dart';

class Custom_Painter extends StatefulWidget {         //чтобы запустить этот код нужно вызвать этот класс в main()
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
                  _getHeader(),
                  _getInputs(), //входы
                  _getSignIn(), //войти
                  _getBottomRow(), //нижний рядок
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
    flex: 4,
    child: Container(
      alignment: Alignment.bottomRight,
      child: const Text(
        'Добро Пожаловать',
        style: TextStyle(color: Colors.white, fontSize: 37),
      ),
    ),
  );
}

_getInputs() {
  return Expanded(
    //  ?
    flex: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Login'),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Password?'),
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

class BackgroundSignIn extends CustomPainter {
  //пользовательский художник
  @override //     холст       размер
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();   //линия рисования

    Path mainBackground = Path();    // путь линии
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.grey.shade100;
    canvas.drawPath(mainBackground, paint);

    // Blue
    Path blueWave = Path(); //синяя волна
    blueWave.lineTo(sw, 0);
    blueWave.lineTo(sw, sh * 0.5);
    blueWave.quadraticBezierTo(sw * 0.5, sh * 0.40, sw * 0.2, 0);
    blueWave.close();
    paint.color = Colors.blue.shade300;
    canvas.drawPath(blueWave, paint);




  Path greyWave = Path();
    greyWave.lineTo(sw, 0);
    greyWave.lineTo(sw, sh * 0.1);
    //                         1                     2                   3
    greyWave.cubicTo(sw * 0.93, sh * 0.20, sw * 0.65, sh * 0.15, sw * 0.6, sh * 0.36);
    //                         5                     6             7
    greyWave.cubicTo(sw * 0.50, sh * 0.55, sw * 0.02, sh * 0.45, 0, sh * 0.4);
    greyWave.close();
    paint.color = Colors.grey.shade800;
    canvas.drawPath(greyWave, paint);



    // Yellow
    Path yellowWave = Path();
    yellowWave.lineTo(sw * 0.5, 0); // линия до
    yellowWave.cubicTo(
        sw * 0.7, 0, sw * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
    yellowWave.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
    yellowWave.close();
    paint.color = Colors.orange.shade300;
    canvas.drawPath(yellowWave, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
