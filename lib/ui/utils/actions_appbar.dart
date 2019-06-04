import 'package:flutter/material.dart';
import 'package:mercado_livre/config/appbar.dart';
import 'package:mercado_livre/routes/navigation.dart';
import 'package:mercado_livre/theme/custom_icons.dart';
import 'package:mercado_livre/ui/utils/search_delegate.dart';

class CustomActions {
  static BuildContext _context;

  static List<Widget> of(BuildContext context, EnumAppBar type) {
    _context = context;
    switch (type) {
      case EnumAppBar.main:
        return mainActions;
      case EnumAppBar.cart:
        return cartActions;
      case EnumAppBar.product:
        return productActions;
      default:
        return mainActions;
    }
  }

  static List<Widget> mainActions = [
    IconButton(
      tooltip: 'Pesquisa',
      icon: Icon(Icons.search),
      onPressed: () {
        print(search());
      },
    ),
    IconButton(
      tooltip: 'Carrinho',
      icon: Icon(CustomIcons.cart),
      onPressed: () {
        CustomNavigation.pushNavigation(_context, '/cart');
      },
    ),
  ];

  static List<Widget> cartActions = [
    IconButton(
      tooltip: 'Pesquisa',
      icon: Icon(Icons.search),
      onPressed: () {
        print(search());
      },
    ),
  ];

  static List<Widget> productActions = [
    IconButton(
      tooltip: 'Favorito',
      icon: Icon(Icons.favorite_border),
      onPressed: () {},
    ),
    IconButton(
      tooltip: 'Pesquisa',
      icon: Icon(Icons.search),
      onPressed: () {
        print(search());
      },
    ),
    IconButton(
        tooltip: 'Carrinho',
        icon: Icon(CustomIcons.cart),
        onPressed: () {
          CustomNavigation.pushNavigation(_context, '/cart');
        }),
  ];

  static Object search() async {
    final List<String> _words = ["arroz", "feijão", "queijo", "purê de batata"];
    return await showSearch<String>(
      context: _context,
      delegate: MySearchDelegate(_words),
    );
  }
}
