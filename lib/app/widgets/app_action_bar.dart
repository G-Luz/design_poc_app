import 'package:flutter/material.dart';

class AppActionBar extends StatelessWidget with PreferredSizeWidget {

  GlobalKey<ScaffoldState> scaffoldKey;

  AppActionBar({Key? key, required this.scaffoldKey}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return PreferredSize(
        preferredSize: const Size.fromHeight(70), // here the desired height
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
            margin: EdgeInsets.only(left: 10),
            child: Image.asset(
              'assets/images/ic_logo.png',
              height: 40,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                  icon: Icon(
                    Icons.menu_outlined,
                    color: Colors.black,
                  )),
            )
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
