import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
      title: Text("ðð»"),
      ),
      body: Container(
        color: Colors.brown[300],
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              right: 20,
              child:Text(
                'EHAðð»',
                style: TextStyle(
                  fontSize: 48,
                ),
              )
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child:Text(
                'ðð»',
                style: TextStyle(
                  fontSize: 48,
                ),
              )
            ),
          ],
        ),
      
        
      )
    )
  );
  }
}