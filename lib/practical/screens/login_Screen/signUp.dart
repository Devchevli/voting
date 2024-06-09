import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting/practical/screens/home_Screen/Tabbar/tabBar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child: ElevatedButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const TabbarScreen() ));},
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.grey),
              fixedSize: WidgetStateProperty.all(const Size(400, 45))),
          child: const Text("Sign Up", style: TextStyle(fontSize: 20,color: Colors.black)),
        ),
      ),
    );
  }
}
