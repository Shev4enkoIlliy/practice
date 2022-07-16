import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsItems_Common extends StatelessWidget {
  final Text text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CupertinoColors.white,
      height: 40,
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: icon,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 18, top: 5),
            child: text,
          )),
          Container(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.right_chevron,
                color: CupertinoColors.systemGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  const SettingsItems_Common({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
}
