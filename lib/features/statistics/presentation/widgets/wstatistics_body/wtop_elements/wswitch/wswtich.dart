import 'package:flutter/material.dart';

import 'wswitch_item_off.dart';
import 'wswitch_item_on.dart';

class WSwitch extends StatefulWidget {
  const WSwitch({super.key});

  @override
  State<WSwitch> createState() => _WSwitchState();
}

class _WSwitchState extends State<WSwitch> {
  bool isWeek = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 75-11, vertical: 10),
      height: 38,
      decoration: ShapeDecoration(
        color: Color(0xFFF2F3F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: isWeek ? WSwitchItemOn(title: 'Week',) : WSwitchItemOff(
              onTap: () {
                setState(() {
                  isWeek = true;
                });
              },
              title: 'Week',
            ),
          ),
          Container(
            child: isWeek ? WSwitchItemOff(
                onTap: () {
                  setState(() {
                    isWeek = false;
                  });
                },
                title: 'Month',
              ) :  WSwitchItemOn(title: 'Month',),
          ),
        ],
      ),
    );
  }
}
