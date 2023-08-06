import 'package:flutter/material.dart';
import 'package:women_tech_flutter/presentation/education/education_screen.dart';
import 'package:women_tech_flutter/presentation/home/home_screen.dart';
import 'package:women_tech_flutter/presentation/task/task_main_screen.dart';
import 'package:women_tech_flutter/presentation/user/user_main_screen.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _currentIndex = 0;

  final _pages = const [
    HomeScreen(),
    TaskMainScreen(),
    EducationScreen(),
    UserMainScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: '실천',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '교육',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '나',
          ),
        ],
      ),
    );
  }
}
