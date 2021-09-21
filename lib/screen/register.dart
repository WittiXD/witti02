import 'package:flutter/material.dart';
import 'package:witti02/Backend/database.dart';
import 'package:witti02/config/constant.dart';
import 'package:witti02/screen/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var txtname, txtsname, txtemail, txtpassword;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtsName(),
                txtEmail(),
                txtPassword(),
                btnsubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
          style: TextStyle(
            color: pColor,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: "Name:",
            icon: Icon(Icons.people),
            hintText: 'Input your name',
          ),
          validator: (val1) {
            if (val1!.length < 3) {
              return 'กรอกชื่อมากกว่า 3 ตัว';
            }
          },
          onSaved: (val) {
            txtname = val;
          }),
    );
  }

  Widget txtsName() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
          style: TextStyle(
            color: pColor,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: "sname:",
            icon: Icon(Icons.people_alt_rounded),
            hintText: 'Input your surname',
          ),
          validator: (val2) {
            if (val2!.isEmpty) {
              return 'ทำไมถึงปล่อยให้มันว่าง!!!';
            } else if (val2.length < 3) {
              return 'กรอกให้มากกว่านี้!!!';
            }
          },
          onSaved: (val2) {
            txtsname = val2;
          }),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
          style: TextStyle(
            color: pColor,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: "email:",
            icon: Icon(Icons.email),
            hintText: 'Input your name',
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (val3) {
            if (!(val3!.contains('@'))) {
              return 'นี่มันไม่ใช่Email!!';
            } else if (!(val3.contains('.'))) {
              return 'มันก็ยังไม่ใช่Email!!';
            }
          },
          onSaved: (val3) {
            txtemail = val3;
          }),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
          style: TextStyle(
            color: pColor,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: "password:",
            icon: Icon(Icons.lock),
            hintText: 'Input your name',
          ),
          obscureText: true,
          onSaved: (val) {
            txtpassword = val;
          }),
    );
  }

  Widget btnsubmit() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 20,
          ),
          primary: pColor,
          padding: EdgeInsets.all(20.0),
          shape: StadiumBorder()),
      child: Text('SUBMIT'),
      onPressed: () {
        if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }     
        var local = LocalDB();
        local.Register(txtname, txtsName, txtEmail, txtPassword);

        Navigator.pushNamed(context,'login');
      },
    );
  }
}
