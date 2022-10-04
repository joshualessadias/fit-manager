import 'package:flutter/material.dart';

class MyFloatingChatButton extends StatelessWidget {
  const MyFloatingChatButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.red,
      foregroundColor: Colors.white.withAlpha(200),
      child: const Icon(Icons.chat_rounded),
    );
  }
}
