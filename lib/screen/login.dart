import 'package:flutter/material.dart';
import 'package:witti02/Backend/database.dart';
import 'package:witti02/config/constant.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
var email ,password;
final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.alternate_email,
                      color: pColor,
                      size: size.height * 0.05,
                    ),
                    hintText: "Email",
                  ),
                  onSaved: (value){
                    email = value;
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: pColor,
                      size: size.height * 0.05,
                    ),
                    hintText: "Password",
                  ),
                  onSaved: (value){
                    password = value;
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  formkey.currentState!.save();
                  var local = LocalDB();
                  local.Login(email, password).then((value){
                    if(value){
                      print('success');
                    }else{
                      print('false');
                      final Bar = SnackBar(
                      content: Text('ไม่พบข้อมูล')
                      );
                      ScaffoldMessenger.of(context).showSnackBar(Bar);
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
