import 'package:fit_manager/screens/assessment_screen.dart';
import 'package:fit_manager/screens/calendar_screen.dart';
import 'package:fit_manager/screens/home_screen.dart';
import 'package:fit_manager/screens/workout_screen.dart';
import 'package:fit_manager/widgets/my_app_bar.dart';
import 'package:fit_manager/widgets/my_bottom_navigation_bar.dart';
import 'package:fit_manager/widgets/my_drawer.dart';
import 'package:fit_manager/widgets/my_floating_chat_button.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final globalKey = GlobalKey<ScaffoldState>();

  final List<Widget> _screens = const [
    HomeScreen(),
    WorkoutScreen(),
    AssessmentScreen(),
    CalendarScreen(),
  ];

  int _selectedIndex = 0;

  void onMenuTap() {
    globalKey.currentState!.openEndDrawer();
  }

  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: MyAppBar(
        onMenuTap: onMenuTap,
      ).build(context),
      body: _screens[_selectedIndex],
      endDrawer: const MyDrawer(),
      floatingActionButton: const MyFloatingChatButton(),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTap: onItemTap,
      ),
    );
  }
}
