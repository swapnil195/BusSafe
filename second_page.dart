import 'package:flutter/material.dart';


class second_page extends StatelessWidget {
  const second_page({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Text("2nd page"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,

        ),
      ),
    );
  }
}
