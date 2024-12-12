import 'package:businesscard/Screens/HelpScreen/helpScreen.dart';
import 'package:businesscard/Screens/SubscriptionScreen/SubscriptionScreen.dart';
import 'package:businesscard/Widgets/ATMCardWidget.dart';
import 'package:businesscard/Widgets/Lists.dart';
import 'package:businesscard/Widgets/assetsImages.dart';
import 'package:businesscard/Widgets/categoryListWidget.dart';
import 'package:businesscard/Widgets/colorwidget.dart';
import 'package:businesscard/Widgets/remainderLists.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.30,
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,bottom: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.black,
                        ),
                        Text(
                          "Diskuss",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Stack(
                          children: [
                            IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 71, 122, 164)),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.message_outlined,
                                  color: Colors.white,
                                )),
                               
                            Positioned(
                              right: 5,
                              child: CircleAvatar(
                                radius: 10,
                                child: Text(
                                  "4",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Atmcard(),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, right: 100),
              child: Row(
                children: [
                  Icon(Icons.refresh,
                      color: const Color.fromARGB(255, 5, 68, 120)),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    "View back side",
                    style:
                        TextStyle(color: const Color.fromARGB(255, 5, 68, 120)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: size.height * 0.055,
                        width: size.width * 0.48,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 4, 48, 83),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.card_giftcard_rounded,
                                  color: Colors.white),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context) => HelpScreen(),));
                                },
                                child: Text(
                                  "Manage Card",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.055,
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 4, 48, 83)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share,
                                  color: const Color.fromARGB(255, 4, 48, 83)),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              GestureDetector(
                                 onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context) =>SubscriptionScreen(),));
                                },
                                child: Text(
                                  "Share Digital",
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 4, 48, 83)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Center(
                    child: Container(
                      height: size.height * 0.12,
                      width: size.width * 0.869,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: size.height * 0.09,
                            width: size.width * 0.52,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Create New Digital",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text("Business Card",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ],
                            ),
                          ),
                          Container(
                            height: size.height * 0.09,
                            width: size.width * 0.15,
                            child: Icon(Icons.add),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 130, 129, 129)
                                    .withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: size.height * 0.15,
                    child: ListView.builder(
                      itemCount: categoryNames.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryListWidget(
                          categoryIcons: categoryIcons[index],
                          categoryNames: categoryNames[index],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Remainders",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RemainderListWidget(
              names: "Kiran",
              company: "levon techno",
              time: "10:30 AM",
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RemainderListWidget(
              names: "Navaneethan",
              company: "levon techno",
              time: "11:40 AM",
            ),
          ],
        ),
      ),
    );
  }
}
