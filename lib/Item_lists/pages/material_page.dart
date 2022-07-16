import 'package:flutter/material.dart';
import 'package:practice/Item_lists/cupertino_itemList.dart';



class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('UI Layout practice'),
        centerTitle: true,
      ),
      body: MyCupertinoListView (),
    );
  }
}
