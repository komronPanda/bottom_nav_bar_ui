import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

import '../widgets/bottom_nav_bar.dart';
import 'pages/chat_page.dart';
import 'pages/home_page.dart';
import 'pages/statistics_page.dart';
import 'pages/profile_page.dart';

@RoutePage()
class NoNamePage extends StatefulWidget {
  const NoNamePage({super.key});

  @override
  State<NoNamePage> createState() => _NoNamePageState();
}

class _NoNamePageState extends State<NoNamePage> {
  int selectedpage = 0;
  final _pageNo = [HomePage(), StatisticsPage(), ChatPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: _pageNo[selectedpage],
      bottomNavigationBar: BottomNavBar(
        initialActiveIndex: selectedpage,
        onTap: (num) {
          setState(() {
            selectedpage = num;
          });
        },
      ),
    );
  }
}
