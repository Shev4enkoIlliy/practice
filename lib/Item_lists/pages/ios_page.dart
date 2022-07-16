import 'package:flutter/cupertino.dart';
import 'package:practice/Item_lists/cupertino_itemList.dart';
class Cupeertino_layout_practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Settings UI',
          style: TextStyle(color: CupertinoColors.white),
        ),
        backgroundColor: CupertinoColors.destructiveRed,
      ),
      child: MyCupertinoListView(),
    );
  }
}
