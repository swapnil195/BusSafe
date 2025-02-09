import 'package:flutter/material.dart';
import 'package:hello/pages/Notifications.dart';
import 'package:hello/pages/log.dart';
import 'package:hello/pages/second_page.dart';
import 'package:hello/pages/home_page.dart';
import 'package:hello/pages/profile.dart';
import 'package:hello/pages/About us.dart';

class first_page extends StatefulWidget {
   first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(title: Text("Bus_Safe"),),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder:(context) => ProfilePage()),

                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationScreen())
                );
              },


            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>AboutUs()));
              },

            )
          ],
        ),
      ),
      body: Center(
        child: Column(
        children:[
          SizedBox(height: 50),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: Size(350, 70)
          ),
          onPressed:() {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          child: Text("login as a student/parent"),

        ),
          SizedBox(height: 50),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(350, 70)
              ),
              onPressed:() {

            Navigator.push(context,
              MaterialPageRoute(builder: (context) => log()),
            );

          },
              child: Text("login as driver")),
          SizedBox(height: 50),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(350, 70)
              ),
              onPressed:() {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );

          },
              child: Text("click here for general navigational map or routes")),
      ],
    ),

      ),


    );
  }
}

