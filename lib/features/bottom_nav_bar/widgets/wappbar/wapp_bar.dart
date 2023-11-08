import 'package:flutter/material.dart';

class WAppBar extends StatelessWidget {
  final Function() onTap;
  final Widget child;
  const WAppBar({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xFFDCDDDF), width: 1))
      ),
      padding: const EdgeInsets.only(left: 18, right: 26),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Statistics',
            style: TextStyle(
              color: Color(0xFF171215),
              fontSize: 18,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: child,
          ),
        ],
      ),
    );
  }
}
