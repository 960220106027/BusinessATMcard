import 'package:businesscard/Widgets/colorwidget.dart';
import 'package:flutter/material.dart';

class Atmcard extends StatefulWidget {
  const Atmcard({super.key});

  @override
  State<Atmcard> createState() => _AtmcardState();
}

class _AtmcardState extends State<Atmcard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return   Padding(
                padding: const EdgeInsets.only(top: 160, left: 25, right: 25),
                child: Container(
                  height: size.height * 0.25,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: gradientBlue,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: size.height * 0.25,
                            width: size.width * 0.35,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 13, 1, 26),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Text(
                                    "Diskuss",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.15,
                                  ),
                                  Text(
                                    "Kiran",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: size.height * 0.25,
                            width: size.width * 0.52,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Text(
                                    "Designer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Personal Card",
                                    style: TextStyle(
                                         color: const Color.fromARGB(255, 117, 115, 115), fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.07,
                                  ),
                                  Container(
                                    height: size.height * 0.001,
                                    width: size.width * 0.4,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Text(
                                    "kiran27@gmail.com",
                                    style: TextStyle(
                                        color: const Color.fromARGB(255, 117, 115, 115), fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}