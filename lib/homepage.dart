import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
      title: Text("🖕🏻"),
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
                'EHA🖕🏻',
                style: TextStyle(
                  fontSize: 48,
                ),
              )
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child:Text(
                '🖕🏻',
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