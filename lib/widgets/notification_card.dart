import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: ListTile(
        leading: Icon(Icons.notifications_rounded),
        title: Text('Aviso em destaque'),
      ),
    );
  }
}
