import 'package:flutter/material.dart' show IconData, Icons;

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
    title: 'Botones',
    subTitle: 'Varios tipos de botones',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbar y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'Animated Contanier',
    subTitle: 'Contenedor animado',
    link: '/animated',
    icon: Icons.check_box_outlined,
  ),
  MenuItems(
    title: 'UI Controls + Titles',
    subTitle: 'Una serie de controles en Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItems(
    title: 'App Tutorial',
    subTitle: 'Tutorial de una app',
    link: '/tutorial',
    icon: Icons.tungsten_rounded,
  ),
  MenuItems(
    title: 'Infinite Scroll',
    subTitle: 'Infinite Scroll',
    link: '/infinite',
    icon: Icons.vertical_align_bottom_rounded,
  ),
  
];
