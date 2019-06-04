import 'package:flutter/material.dart';
import 'package:mercado_livre/config/appbar.dart';
import 'package:mercado_livre/theme/colors.dart';
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
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.scaleDown,
                      image: AssetImage('assets/images/empty-cart.png')),
                  color: CustomColors.mainYellow),
            ),
            SizedBox(height: 100),
            Text(
              'Seu carrinho está vazio',
              style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 22,
                  color: CustomColors.textYellow,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 10),
            Text(
              'Parece que você não adicionou nenhum\nitem no seu carrinho ainda',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 16,
                  color: CustomColors.grayTitle[50],
                  fontWeight: FontWeight.w300),
            ),
          ],
        )),
      ),
    );
  }
}
