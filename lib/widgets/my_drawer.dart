import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          ListTile(
            title: Text('Avisos'),
          ),
          ListTile(
            title: Text('Configurações'),
          ),
          ListTile(
            title: Text('Compartilhar'),
          ),
          ListTile(
            title: Text('Avaliar'),
          ),
          ListTile(
            title: Text(
              'Sign Out',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
