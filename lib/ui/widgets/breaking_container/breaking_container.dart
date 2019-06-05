import 'package:flutter/material.dart';
import 'package:mercado_livre/theme/colors.dart';
import 'package:mercado_livre/theme/theme.dart';

class BreakingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('assets/images/payment-method.png', scale: 3,),
          Text('Você ficou sem créditos?', style: CustomThemes.productDetailTitle.copyWith(fontSize: 20)),
          Text('Recarregue seu celular', style: CustomThemes.productDetailTitle.copyWith(color: Colors.blue, fontSize: 18),)
        ],
      )
    );
  }
}