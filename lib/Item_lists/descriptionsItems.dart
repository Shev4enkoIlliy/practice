import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class DescriptionItems extends StatelessWidget {
  final String text;

  @override
  Widget build(BuildContext context) {
    // таким образом делаю мои кнопки- карточки
    return Container(
      width: 400,
      decoration: const BoxDecoration(color: CupertinoColors.systemGrey4),
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 13, bottom: 10),
        child: Text(
          text,
          style: const TextStyle(
              color: CupertinoColors.systemGrey, fontWeight: FontWeight.w500, fontSize: 12),
        ),
      ),
    );
  }

  const DescriptionItems({
    Key? key,
    required this.text,
  }) : super(key: key);
}
