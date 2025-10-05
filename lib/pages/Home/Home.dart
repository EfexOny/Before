import 'package:flutter/material.dart';
import '../Calendar/Calendar.dart';
import '../Tasks/Tasks.dart';
import '../Habits/Habits.dart';
import '../Focus/Focus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    CalendarPage(),
    TasksPage(),
    HabitsPage(),
    FocusPage(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.check_box), label: 'Taskuri'),
          BottomNavigationBarItem(icon: Icon(Icons.track_changes), label: 'Obiceiuri'),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Focus'),
        ],
      ),
    );
  }
}
