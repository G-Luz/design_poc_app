import 'package:design_poc/app/widgets/app_item_tile.dart';
import 'package:design_poc/app/widgets/app_logout_dialog.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
                child: DrawerHeader(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close)),
                  ),
                ),
              ),
              AppItemTile(
                  iconPath: 'assets/images/ic_hub.png',
                  text: 'Hub',
                  onTapCallback: () {}),
              AppItemTile(
                  iconPath: 'assets/images/ic_contacts.png',
                  text: 'Contactos',
                  onTapCallback: () {}),
              AppItemTile(
                  iconPath: 'assets/images/ic_ci.png',
                  text: 'Conflitos de interesse',
                  onTapCallback: () {}),
              AppItemTile(
                  iconPath: 'assets/images/ic_opportunity.png',
                  text: 'Oportunidade',
                  onTapCallback: () {}),
              AppItemTile(
                  iconPath: 'assets/images/ic_notifications.png',
                  text: 'Notificações',
                  onTapCallback: () {}),
              AppItemTile(
                  iconPath: 'assets/images/ic_settings.png',
                  text: 'Settings',
                  onTapCallback: () {}),
            ],
          )),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Divider(),
                    AppItemTile(
                        iconPath: 'assets/images/ic_logout.png',
                        text: 'Logout',
                        onTapCallback: () {
                          AppDialog.show(context);
                        }),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
