import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: ListView(
        children: [
          Image.asset(
            "asset/img/logo.png",
            width: size.width * 0.2,
            height: size.height * 0.2,
          ),
          Text(
            "Welcome to kumtnb",
            style: TextStyle(
              fontSize: 32,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: size.height * 0.05),
          Image(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1551610290-e153ec567dd8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3013&q=80',
            ),
            height: size.height * 0.3,
          ),
          SizedBox(height: size.height * 0.05),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 20,
                ),
                primary: Colors.amber[900],
                padding: EdgeInsets.all(20.0),
                shape: StadiumBorder()),
            child: Text('LOGIN'),
            onPressed: () {
              print("LOGIN!!");
            },
          ),
          SizedBox(height: size.height * 0.05),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 20,
                ),
                primary: Colors.amber[900],
                padding: EdgeInsets.all(20.0),
                shape: StadiumBorder()),
            child: Text('Sign up'),
            onPressed: () {
              print("Sign up'");
            },
          ),
        ],
      ),
    ));
  }
}
