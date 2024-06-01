import 'package:flutter/material.dart';

AppBar topNavigation(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 14),
        child: Image.asset(
          "assets/icons/logo.png",
          width: 28,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
