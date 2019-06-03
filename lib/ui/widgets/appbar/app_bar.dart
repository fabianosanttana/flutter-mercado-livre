import 'package:flutter/material.dart';
import 'package:mercado_livre/config/appbar.dart';
import 'package:mercado_livre/ui/utils/actions_appbar.dart';

import 'bottom_appbar.dart';

class CustomAppBar extends AppBar {
  //Constructor
  CustomAppBar(
      {Key key,
      @required String title,
      @required BuildContext context,
      @required EnumAppBar actions,
      bool showBottom: true})
      : super(
            key: key,
            title: Text(title),
            actions: CustomActions.of(context, actions),
            elevation: 4.0,
            bottom: showBottom
                ? CustomAppBarBottom(size: Size.fromHeight(40.0))
                : null);
}
