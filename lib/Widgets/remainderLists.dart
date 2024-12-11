import 'package:flutter/material.dart';

class RemainderListWidget extends StatefulWidget {
  final String names;
  final String company;
  final String time;

  const RemainderListWidget(
      {super.key,
      required this.names,
      required this.company,
      required this.time});

  @override
  State<RemainderListWidget> createState() => _RemainderListWidgetState();
}

class _RemainderListWidgetState extends State<RemainderListWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.only(
                  left: size.width * 0.07, right: size.width * 0.07),
      child: Container(
        height: size.height * 0.1,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 73, 169, 248),
                child: Icon(
                  Icons.person_2_rounded,
                  color: Colors.white,
                ),
              ),
              title: Text(widget.names),
              subtitle: Text(widget.company),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Today",style: TextStyle(fontSize: 14),),
                    Text(widget.time),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
