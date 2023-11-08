import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WActiveIcon extends StatelessWidget {
  final String icon;
  final String title;

  const WActiveIcon({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: ShapeDecoration(
            color: Color(0xFF37BD6B),
            shape: OvalBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x3F37BD6B),
                blurRadius: 6,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: SvgPicture.asset(
            icon,
            color: Colors.white,
            width: 30,
            height: 30,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF37BD6B),
            fontSize: 12,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
