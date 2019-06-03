import 'package:flutter/material.dart';
import 'package:mercado_livre/config/appbar.dart';
import 'package:mercado_livre/ui/widgets/appbar/app_bar.dart';

class CartContainer extends StatefulWidget {
  @override
  _CartContainerState createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Carrinho', actions: EnumAppBar.cart, context: context),
      body: Container(
        child: Center(child: Text('oi')),
      ),
    );
  }
}
