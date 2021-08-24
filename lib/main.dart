import 'package:flutter/material.dart';
import 'package:witti02/homepage.dart';
import 'package:witti02/index.dart';

void main(){
  
  runApp(Myapp());
}
class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData.dark(),
      home: Index(),
    );
  }
}