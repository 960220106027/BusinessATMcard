import 'package:businesscard/Widgets/colorwidget.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
         
          onPressed: () {
          
        }, icon: Center(child: Icon(Icons.arrow_back_ios,color: Colors.black,))),
        title: Text("Help"),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.info_outline_rounded),
        )],
      ),
      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  left: BorderSide(
                    color: Colors.blue,
                    width: 3, 
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 207, 207, 207),
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(radius: 30,
                  backgroundColor: const Color.fromARGB(255, 177, 214, 245),
                  child: Icon(Icons.call, color: Colors.blue),
                ),
                title: Text(
                  "Our 24x7 Customer Service",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "+91 9090876543",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: size.height*0.02,),
              Container(
             
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  left: BorderSide(
                    color: Colors.blue,
                    width: 3, 
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 207, 207, 207),
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(radius: 30,
                  backgroundColor: const Color.fromARGB(255, 177, 214, 245),
                  child: Icon(Icons.mail, color: Colors.blue),
                ),
                title: Text(
                  "Write us at",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "support@gmail.com",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: size.height*0.03,),
            Text("Frequently Asked Questions",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.02,),
            Row(
             
              children: [
                Text("What services does Template offer?",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: size.width*0.22,),
                CircleAvatar(radius: 17,backgroundColor: blue,)
              ],
            ),
            SizedBox(height: size.height*0.04,),
            Container(
               height: size.height*0.09,
               
               child: Text("Lorem ipsum dotor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore at dolore magna aliqua.Ut"),
            ),
           Container(
            height: size.height*0.001,
            color: const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),
           ),
            SizedBox(height: size.height*0.01,),
            Container(
            height: size.height*0.08,
            
            child: Row(
              children: [
                Container(
                  width: size.width*0.77,
                  height: size.height*0.06,
                  
                  
                  child: Column(children: [
                    Text("How does Template approach business transformation?",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],),
                ),
                IconButton(
                  style: IconButton.styleFrom(backgroundColor:const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),),
                  onPressed: () {
                  
                }, icon: Icon(Icons.add))
              ],
            ),
           ),
            Container(
            height: size.height*0.001,
            color: const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),
           ),
            SizedBox(height: size.height*0.01,),
            Container(
            height: size.height*0.08,
            
            child: Row(
              children: [
                SizedBox(
                  width: size.width*0.77,
                  height: size.height*0.06,
                  child: Column(children: [
                    Text("What Kind of support does Template provide for leadership development?",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],),
                ),
                IconButton(
                  style: IconButton.styleFrom(backgroundColor:const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),),
                  onPressed: () {
                  
                }, icon: Icon(Icons.add))
              ],
            ),
           ),
            Container(
            height: size.height*0.001,
            color: const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),
           ),
            SizedBox(height: size.height*0.01,),
            Container(
            height: size.height*0.08,
            
            child: Row(
              children: [
                SizedBox(
                 width: size.width*0.77,
                  height: size.height*0.06,
                  child: Column(children: [
                    Text("How does Template help with financial management?",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],),
                ),
                IconButton(
                  style: IconButton.styleFrom(backgroundColor:const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),),
                  onPressed: () {
                  
                }, icon: Icon(Icons.add))
              ],
            ),
           ),
           Container(
            height: size.height*0.001,
            color: const Color.fromARGB(255, 200, 200, 200).withOpacity(0.5),
           ),

          ],
        ),
      ),
    );
  }
}