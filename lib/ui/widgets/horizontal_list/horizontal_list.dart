import 'package:flutter/material.dart';
import 'package:mercado_livre/theme/custom_icons.dart';
import 'package:mercado_livre/ui/widgets/horizontal_list/horizontal_circle_item.dart';

class HorizontalList extends StatelessWidget {
  final List<HorizontalCircleItem> _list = [
    HorizontalCircleItem(
        title: 'Pagar com código QR',
        icon: CustomIcons.blackberry_qr_code_variant,
        color: Colors.blue),
    HorizontalCircleItem(
      title: 'Descontos Exclusivos',
      icon: CustomIcons.shopping_online,
    ),
    HorizontalCircleItem(
      title: 'O seu histórico',
      icon: CustomIcons.time,
    ),
    HorizontalCircleItem(
      title: 'Ofertas da semana',
      icon: CustomIcons.tag__2_,
    ),
    HorizontalCircleItem(
      title: 'Acessórios para Veículos',
      icon: CustomIcons.shopping_online,
    ),
    HorizontalCircleItem(
      title: 'Brinquedos e Hobbies',
      icon: CustomIcons.shopping_online,
    ),
    HorizontalCircleItem(
      title: 'Calçados, Roupas, e Bolsas',
      icon: CustomIcons.shopping_online,
    ),
    HorizontalCircleItem(
      title: 'Carros, Motos e Outros',
      icon: CustomIcons.car,
    ),
    HorizontalCircleItem(
      title: 'Casa, Móveis e Decoração',
      icon: CustomIcons.shopping_online,
    ),
    HorizontalCircleItem(
      title: 'Celulares e Telefones',
      icon: CustomIcons.smartphone,
    ),
    HorizontalCircleItem(
      title: 'Eletrônicos, Áudio e Vídeo',
      icon: CustomIcons.cable_tv,
    ),
    HorizontalCircleItem(
      title: 'Games',
      icon: CustomIcons.joystick,
    ),
    HorizontalCircleItem(
      title: 'Imóveis',
      icon: Icons.home,
    ),
    HorizontalCircleItem(
      title: 'Informática',
      icon: CustomIcons.laptop,
    ),
    HorizontalCircleItem(
      title: 'Lojas oficiais',
      icon: CustomIcons.cart,
    ),
    HorizontalCircleItem(
      title: 'Ver todas',
      icon: Icons.more_horiz,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 145.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, i) {
          return _list[i];
        },
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
