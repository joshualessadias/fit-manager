import 'package:flutter/material.dart';

class GymPresentationCard extends StatelessWidget {
  const GymPresentationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.fromLTRB(8, 16, 8, 4),
      child: Stack(
        children: [
          Image.asset(
            'images/gym.jpg',
            fit: BoxFit.cover,
            width:
                10000, //very big number (it's gonna be limited by the container's size)
          ),
          const Text(
            ' {Nome da Academia}',
            style: TextStyle(
              fontSize: 20,
              backgroundColor: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
