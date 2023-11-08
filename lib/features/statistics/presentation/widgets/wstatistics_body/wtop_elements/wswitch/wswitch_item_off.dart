import 'package:flutter/material.dart';

class WSwitchItemOff extends StatelessWidget {
  final String title;
  final Function() onTap;
  const WSwitchItemOff({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 38),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF6A6D7C),
            fontSize: 13,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
