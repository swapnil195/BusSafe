import 'package:flutter/material.dart';
import 'package:hello/pages/Notifications.dart';
import 'package:hello/pages/second_page.dart';
import 'package:hello/pages/home_page.dart';
import 'package:hello/pages/profile.dart';
import 'package:hello/pages/settings.dart';

class first_page extends StatefulWidget {
   first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
   int _selectedindex=0;

   void _navigationBar(int index){
     setState(() {
       _selectedindex=index;
     });
   }

  final List _pages=[
    home_page(),

    ProfilePage(),

    settings(),
  ];

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
                  MaterialPageRoute(builder: (context) => otificatio())
                );
              },


            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ProfilePage()));
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
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );

          },
              child: Text("login as a administration or staff")),
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

