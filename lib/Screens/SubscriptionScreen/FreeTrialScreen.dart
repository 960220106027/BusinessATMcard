import 'package:businesscard/Widgets/FreeTrialWidget.dart';
import 'package:businesscard/Widgets/colorwidget.dart';
import 'package:flutter/material.dart';

class FreeTrialScreen extends StatefulWidget {
  const FreeTrialScreen({super.key});

  @override
  State<FreeTrialScreen> createState() => _FreeTrialScreenState();
}

class _FreeTrialScreenState extends State<FreeTrialScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: size.height * 0.30,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.05,
                      width: size.width * 0.1,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.1,
                          bottom: size.height * 0.07,
                          right: size.width * 0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Start Your 7 Days",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Free Trial",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
               height: size.height * 0.69,

              child: PageView(
                 children: [
                  FreeTrialWidget(
                  coins:"Silver",
                  cost: "₹99/mo",
                ),
                FreeTrialWidget(
                  coins:"Gold",
                  cost: "₹199/mo",
                ),
                FreeTrialWidget(
                  coins:"Diamond",
                  cost: "₹299/mo",
                ),
                 ],
              ),
            ),
             
           
          ]),
          SizedBox(height: size.height*0.07,),

          Text("Terms & Conditions",style: TextStyle(fontSize: 16)),
           SizedBox(height: size.height*0.03,),
          Text("Lorem ipsum dolor sit amet consectur.",style: TextStyle(fontSize: 16),),
          Text("Euismod non nisl magna nullam nisi nisi pharetra",style: TextStyle(fontSize: 16)),
          Text("eu facilities.Odio laoreet turpis quis tempor",style: TextStyle(fontSize: 16)),
          Text("fringilla.Accumsan",style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
