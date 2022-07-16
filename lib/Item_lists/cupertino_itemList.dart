import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/Item_lists/descriptionsItems.dart';
import 'package:practice/Item_lists/settings_items.dart';
import 'package:practice/Item_lists/Account.dart';
import 'package:practice/Item_lists/security.dart';

//Common   2
//Account  3
//Security 3
//Misc     2

class MyCupertinoListView extends StatelessWidget {
  const MyCupertinoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: ListView(
        children: [
          Column(
            children: [
              const DescriptionItems(text: 'Common'),
              const SettingsItems_Common(
                  text: Text('Language'),
                  icon: Icon(
                    CupertinoIcons.globe,
                    color: CupertinoColors.systemGrey,
                  )),
              const SettingsItems_Common(
                  text: Text('Environment'),
                  icon: Icon(
                    CupertinoIcons.cloud,
                    color: CupertinoColors.systemGrey,
                  )),
              const DescriptionItems(text: 'Account'),
              const AccounstSettings(
                  text: Text(
                    'Pfone number',
                    style: TextStyle(color: CupertinoColors.black),
                  ),
                  iconStart: Icon(CupertinoIcons.phone,
                      color: CupertinoColors.systemGrey)),
              const AccounstSettings(
                  text: Text('Email'),
                  iconStart: Icon(CupertinoIcons.mail,
                      color: CupertinoColors.systemGrey)),
              const AccounstSettings(
                  text: Text('Sign out'),
                  iconStart: Icon(CupertinoIcons.tray_arrow_up_fill,
                      color: CupertinoColors.systemGrey)),
              const DescriptionItems(text: 'Security'),
              const SecurityItems(
                firstIcon: Icon(CupertinoIcons.device_phone_portrait,
                    color: CupertinoColors.systemGrey),
                text: Text('lock app in background'),
              ),
              const SecurityItems(
                firstIcon: Icon(CupertinoIcons.circle_grid_hex,
                    color: CupertinoColors.systemGrey),
                text: Text('Use fingerprint'),
              ),
              const SecurityItems(
                firstIcon: Icon(CupertinoIcons.lock,
                    color: CupertinoColors.systemGrey),
                text: Text('Change password'),
              ),
              const DescriptionItems(text: 'Misc'),
              const SettingsItems_Common(
                text: Text('Terms of Service'),
                icon: Icon(CupertinoIcons.settings,
                    color: CupertinoColors.systemGrey),
              ),
              const SettingsItems_Common(
                text: Text('Open source licences'),
                icon: Icon(CupertinoIcons.book_circle,
                    color: CupertinoColors.systemGrey),
              ),
              Container(
                height: 80,
                width: 400,
                decoration:
                    const BoxDecoration(color: CupertinoColors.systemGrey4),
                child: Container(
                  padding: const EdgeInsets.only(top: 24, left: 13, bottom: 10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
