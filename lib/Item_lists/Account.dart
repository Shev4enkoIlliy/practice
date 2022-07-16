import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccounstSettings extends StatelessWidget {
  final Text text;
  final Icon iconStart;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      height: 40,
      padding: const EdgeInsets.only(left: 15),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: iconStart,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 18, top: 7),
              child: text,
            )),
            Container(
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.right_chevron,
                    color: CupertinoColors.systemGrey,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  const AccounstSettings({
    Key? key,
    required this.text,
    required this.iconStart,
  }) : super(key: key);
}
