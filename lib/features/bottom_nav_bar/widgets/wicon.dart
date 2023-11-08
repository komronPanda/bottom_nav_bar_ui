import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WIcon extends StatelessWidget {
  final String icon;
  const WIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}
