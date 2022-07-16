import 'package:flutter/cupertino.dart';


//3 items
class SecurityItems extends StatelessWidget {
  final Text text;
  final Icon firstIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
    height: 40,
      padding: EdgeInsets.only(left: 15, right: 12),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(child: firstIcon),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 18, top: 7),
                child: text,
              ),
            ),
            Container(child: CupertinoSwitch(
              activeColor: CupertinoColors.destructiveRed,
              trackColor: CupertinoColors.systemGrey4,
              value:true,
              onChanged: (value){
                       value = false;
              },
            ),
            ),
          ],
        ),
      ),
    );
  }

  const SecurityItems({
    Key? key,
    required this.firstIcon,
    required this.text,
  }) : super(key: key);
}
