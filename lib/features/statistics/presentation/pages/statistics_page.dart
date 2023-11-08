import 'package:auto_route/annotations.dart';
import '/gen/=/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../bottom_nav_bar/widgets/wappbar/wapp_bar.dart';
import '../widgets/wstatistics_body/wstatistics_body.dart';
@RoutePage()
class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEEED),
      appBar: AppBar(
        toolbarHeight: 50,
        leadingWidth: double.infinity,
        leading: WAppBar(onTap: (){}, child: Assets.icons.notificationIcon.svg()),
      ),
      body: WStatisticsBody()
    );
  }
}