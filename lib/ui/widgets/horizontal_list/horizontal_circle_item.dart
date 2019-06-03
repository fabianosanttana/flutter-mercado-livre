import 'package:flutter/material.dart';
import 'package:mercado_livre/theme/colors.dart';
import 'package:mercado_livre/theme/theme.dart';

class HorizontalCircleItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  HorizontalCircleItem({this.title, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 90.0,
            height: 90.0,
            margin: EdgeInsets.only(bottom: 10.0),
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 38.0,
              color: color != null ? color: CustomColors.grayTitle[100],
            ),
          ),
          SizedBox(
            child: Text(title, textAlign: TextAlign.center ,style: CustomThemes.titleCircleItem),
            width: 85.0,
          )
        ],
      ),
    );
  }
}
