import 'package:flutter/material.dart';

class TimelineDivider extends StatelessWidget {
  const TimelineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(left: 18, top: 4, bottom: 4),
        height: size.height*0.06,
        width: size.width*0.005,
        color: Colors.blue,
      ),
    );
  }
}