import 'package:businesscard/Widgets/colorwidget.dart';
import 'package:flutter/material.dart';

class FreeTrialWidget extends StatefulWidget {
  final String coins;
  final String cost;
  const FreeTrialWidget({super.key,required,required this.coins,required this.cost});

  @override
  State<FreeTrialWidget> createState() => _FreeTrialWidgetState();
}

class _FreeTrialWidgetState extends State<FreeTrialWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
                padding: const EdgeInsets.only(top: 180, left: 30, right: 30),
                child: Container(
                  height: size.height * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.coins,style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                            Text(widget.cost,style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Text("7 Days Free Trial,Then ₹99/month",style: TextStyle(fontSize: 16),),
                        SizedBox(height: size.height*0.03,),
                        Row(
                          children: [
                            CircleAvatar(radius: 5,backgroundColor: Colors.black,),
                             SizedBox(width: size.width*0.05,),
                            Text("10 Free Template"),
                          ],
                        ),
                        SizedBox(height: size.height*0.03,),
                         Row(
                          children: [
                            CircleAvatar(radius: 5,backgroundColor: Colors.black,),
                             SizedBox(width: size.width*0.05,),
                            Text("Access to live meetings"),
                          ],
                        ),
                        SizedBox(height: size.height*0.03,),
                         Row(
                          children: [
                            CircleAvatar(radius: 5,backgroundColor: Colors.black,),
                             SizedBox(width: size.width*0.05,),
                            Text("No Ads"),
                          ],
                        ),
                        SizedBox(height: size.height*0.03,),
                         Row(
                          children: [
                            CircleAvatar(radius: 5,backgroundColor: Colors.black,),
                             SizedBox(width: size.width*0.05,),
                            Text("Cancel Anytime"),
                          ],
                        ),
                        SizedBox(height: size.height*0.02,),
                         GestureDetector(
                          onTap: () {
                            
                          },
                           child: Container(
                                               height: size.height * 0.06,
                                               width: size.width * 0.9,
                                               decoration: BoxDecoration(
                                                 color:blue,
                                                 borderRadius: BorderRadius.circular(10),
                                               ),
                                               child: Center(
                                                 child: Text(
                                                   "Continue",
                                                   style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                                 ),
                                               ),
                                      ),
                         ),
                      ],
                    ),
                  ),
                ));
  }
}