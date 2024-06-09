import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting/view/utils/config/appImages.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            height: 450,
            child: Image.network(Appimages.screen1,fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text(
              "The power to vote for your country is an important part of a democratic country like India. While many in our country are eligible to cast vote, few are enthusiastic about it. In the 2024 Lok Sabha elections, the voter turnout was 67.11% which is the highest turnout in the history of India.",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
