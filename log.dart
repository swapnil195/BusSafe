import 'package:flutter/material.dart';
import 'package:hello/pages/driver.dart';
import 'package:hello/pages/profile.dart';
import 'package:hello/pages/second_page.dart';


class log extends StatelessWidget {
  const log({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Text("2nd page"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(readOnly: true,
            decoration: InputDecoration(hintText: 'Search..',
            prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)
              )
              
            ),
            onTap: (){

            },),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> ProfilePage()));
            }, child: Text('personal details')),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>driver()));
            }, child: Text('Driver Details')),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> ProfilePage()));
            }, child: Text('Track Location ')),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> second_page1()));
            }, child: Text('Student details')),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> ProfilePage()));
            }, child: Text('Bus Details'))
          ],
        )
      ),
    );
  }
}
