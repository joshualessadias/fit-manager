import 'package:fit_manager/widgets/gym_presentation_card.dart';
import 'package:fit_manager/widgets/notification_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        GymPresentationCard(),
        NotificationCardWidget(),
        Card(
          margin: EdgeInsets.fromLTRB(8, 4, 8, 16),
          child: SizedBox(
            height: 200,
            child: Center(
              child: Text('{Treino}'),
            ),
          ),
        ),
      ],
    );
  }
}
