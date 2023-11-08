import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

import '../chat/presentation/pages/chat_page.dart';
import '../home/presentation/pages/home_page.dart';
import '../statistics/presentation/pages/statistics_page.dart';
import '../profile/presentation/pages/profile_page.dart';
import 'widgets/bottom_nav_bar.dart';

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
