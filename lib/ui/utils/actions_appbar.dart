import 'package:flutter/material.dart';
import 'package:mercado_livre/config/appbar.dart';
import 'package:mercado_livre/routes/navigation.dart';
import 'package:mercado_livre/theme/custom_icons.dart';

class CustomActions {
  static BuildContext _context;

  static List<Widget> of(BuildContext context, EnumAppBar type) {
    _context = context;
    switch (type) {
      case EnumAppBar.main:
        return mainActions;
      case EnumAppBar.cart:
        return cartActions;
      default:
        return mainActions;
    }
  }

  static List<Widget> mainActions = [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(CustomIcons.cart),
      onPressed: () {
        CustomNavigation.pushNavigation(_context, '/cart');
      },
    ),
  ];

  static List<Widget> cartActions = [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
  ];
}
