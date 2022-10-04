import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  final VoidCallback onMenuTap;

  MyAppBar({
    Key? key,
    required this.onMenuTap,
  }) : super(key: key);

  AppBar build(BuildContext context) {
    return AppBar(
      title: const Text('Olá, {usuário}'),
      leading: const Icon(Icons.person_rounded),
      actions: [
        IconButton(
          onPressed: onMenuTap,
          icon: const Icon(Icons.menu_rounded),
        ),
      ],
    );
  }
}
