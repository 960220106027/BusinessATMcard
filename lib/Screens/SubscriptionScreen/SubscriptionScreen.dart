import 'package:businesscard/Screens/SubscriptionScreen/FreeTrialScreen.dart';
import 'package:businesscard/Widgets/TimeLineDividerWidget.dart';
import 'package:businesscard/Widgets/colorwidget.dart';
import 'package:businesscard/Widgets/timelineWidget.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
            children: [
              Container(
                height: size.height * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          IconButton(
                            onPressed: () {
                              
                            },
                            icon: Icon(Icons.close, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      "Start a free trial",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TimelineTile(
                      icon: Icons.lock_open_outlined,
                      title: "Today",
                      description: "Unlock all the features",
                    ),
                    TimelineDivider(),
                    TimelineTile(
                      icon: Icons.notifications_active_outlined,
                      title: "Day 4",
                      description:
                          "Get a reminder that your trial is about to end",
                    ),
                    TimelineDivider(),
                    TimelineTile(
                      icon: Icons.timer_outlined,
                      title: "Day 7",
                      description: "If you want you can cancel anytime",
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.03,),
              Text("7 Days Free Trial,Then ₹99/month", style: TextStyle(fontSize: 16)),
              SizedBox(height: size.height*0.02,),
               Container(
                    height: size.height * 0.06,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color:blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Start 7-Day Free Trial",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.01,),
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => FreeTrialScreen(),));
                    },
                    child: Text("View All Plans",style: TextStyle(color: Colors.blue,fontSize: 16),)),
            ],
          ),
       ),

    );
  }
}