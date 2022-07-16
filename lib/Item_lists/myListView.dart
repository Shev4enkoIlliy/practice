import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMaterialListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

ListView _myListView() {
  return ListView(children: [
    Container(
      padding: EdgeInsets.all(15),
      child: const Text(
        'Common',
        style: TextStyle(fontSize: 15,
            color: Colors.deepOrange,
            fontWeight: FontWeight.w700),
      ),
    ),
   const ListTile(
        title: Text('Language'),
        subtitle: Text('English'),
        leading: Icon(Icons.language), //icon
    ),
    const PopupMenuDivider(),
    const ListTile(
      title: Text('Environment'),
      subtitle: Text('Production'),
      leading: Icon(Icons.cloud_queue), //icon
    ),
    Container(
      padding: EdgeInsets.all(15),
      child: const Text(
        'Account',
        style: TextStyle(fontSize: 15,
            color: Colors.deepOrange,
            fontWeight: FontWeight.w700),
      ),
    ),
    const ListTile(
      title: Text('Phone number'),
      leading: Icon(Icons.phone), //icon
    ),
    const PopupMenuDivider(),
    const ListTile(
      title: Text('Email'),
      leading: Icon(Icons.email_outlined), //icon
    ),
    const PopupMenuDivider(),
    const ListTile(
      title: Text('Sign out'),
      leading: Icon(Icons.exit_to_app), //icon
    ),

    Container(
      padding: EdgeInsets.all(15),
      child: const Text(
        'Secutiry',
        style: TextStyle(fontSize: 15,
            color: Colors.deepOrange,
            fontWeight: FontWeight.w700),
      ),
    ),
    ListTile(
        title: Text('Lock app in background'),
        leading: Icon(Icons.app_blocking_rounded),
        trailing: CupertinoSwitch(
            value: true,
            activeColor: Colors.deepOrangeAccent,
            onChanged: (bool value) {
              value == false;
            })),
    const PopupMenuDivider(),
    ListTile(
        title: Text('Change password'),
        leading: Icon(Icons.lock),
        trailing: CupertinoSwitch(
            value: false,
            activeColor: Colors.deepOrangeAccent,
            onChanged: (bool value) {
              value == false;
            })),
    const PopupMenuDivider(),
    ListTile(
        title: Text('Use fingerprint'),
        leading: Icon(Icons.fingerprint),
        trailing: CupertinoSwitch(
            value: true,
            activeColor: Colors.deepOrangeAccent,
            onChanged: (bool value) {
              value == false;
            })),
  ]);
}

class YColors {
  static const Color colorPrimary = Color(0xff368E3C);
  static const Color colorPrimaryDark = Color(0xff388E3C);
  static const Color colorAccent = Color(0xff8BC34A);
  static const Color colorPrimaryLight = Color(0xffC8E6C9);

  static const Color primaryText = Color(0xff212121);
  static const Color secondaryText = Color(0xff757575);

  static const Color dividerColor = Color(0xffBDBDCc);
}

