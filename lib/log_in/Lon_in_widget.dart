import 'package:flutter/material.dart';
import 'package:practice/strings/strings.dart';


class LogIn_Widget extends StatelessWidget {

  final String text;
  var controller1;

  LogIn_Widget({
    Key? key,
    required this.text,
    required this.controller1,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 330,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 3),
                  blurRadius: 8.0),
            ]),
        child: Padding(
          padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5, top: 5),
          child: Container(
            child:  TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: text,
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class LogIn_StatefullWidget extends StatefulWidget {
  const LogIn_StatefullWidget({Key? key}) : super(key: key);


  @override
  State<LogIn_StatefullWidget> createState() => _LogIn_StatefullWidgetState();
}

class _LogIn_StatefullWidgetState extends State<LogIn_StatefullWidget> {
  final myControllerName = TextEditingController();
  final myControllerEmail = TextEditingController();
  final myControllerPassword = TextEditingController();

  @override
  void dispose() {
    myControllerName.dispose();
    myControllerEmail.dispose();
    myControllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children:  [
      LogIn_Widget(text: 'Name', controller1: myControllerName),
      LogIn_Widget(text: 'Email', controller1: myControllerEmail),
      LogIn_Widget(text: 'Password',controller1: myControllerPassword),
    ],);
  }
}


// class LogIn_Widget1 extends StatelessWidget {
// final String text;
//
//   @override
//   Widget build(BuildContext context) {
//      return Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: Container(
//         width: 330,
//         height: 60,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(5),
//             boxShadow: const [
//               BoxShadow(
//                   color: Colors.black12,
//                   offset: Offset(0.0, 3),
//                   blurRadius: 8.0),
//             ]),
//         child: Padding(
//           padding:
//           const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5, top: 5),
//           child: Container(
//             child:  TextField(
//               obscureText: false,
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 labelText: text,
//                 labelStyle: TextStyle(color: Colors.grey),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// const LogIn_Widget({       // Это кнопочка, которую я смогу юзать везде,  просто вызывать её где мне будет нужно и
//   Key? key,
//   required this.text,
// }) : super(key: key);




