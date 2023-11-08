import 'package:flutter/material.dart';

class WSwitchItemOn extends StatelessWidget {
  final String title;
  const WSwitchItemOn({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 38),
      height: 32,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.10000000149011612),
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 3,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 8,
            offset: Offset(0, 3),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF171215),
            fontSize: 13,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
