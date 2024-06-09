import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting/practical/screens/login_Screen/signUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(child: ElevatedButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp() ));},
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.white10),
              fixedSize: WidgetStateProperty.all(const Size(400, 45))),
          child: const Text("Sign In", style: TextStyle(fontSize: 20,color: Colors.black)),
        ),
      ),
    );
  }
}
