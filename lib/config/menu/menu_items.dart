import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Buttons',
    subTitle: 'Botones de diferentes estilos',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: 'Cards',
    subTitle: 'Contenedores estilizados',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  
  MenuItems(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.credit_card,
  ),
  
  MenuItems(
    title: 'Snackbars and Dialogs',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  
  MenuItems(
    title: 'Animated container',
    subTitle: 'Stateful Widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  
  MenuItems(
    title: 'UI Controls',
    subTitle: 'Controles de Flutter',
    link: '/ui-controls',
    icon: Icons.radio_button_checked_outlined,
  ),
  
];
