import 'package:flutter/material.dart';

class TimelineTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  TimelineTile({super.key, required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height*0.07,
          width: size.width*0.14,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 219, 237, 251),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(width:size.width*0.04),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 106, 105, 105)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}