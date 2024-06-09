import 'package:flutter/material.dart';

import '../../../view/utils/config/appImages.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            height: 450,
            child: Image.network(Appimages.screen2,fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text(
              overflow: TextOverflow.ellipsis,maxLines: 12,
              "The Indian government has made it possible for voters to cast their ballots even if they are unsatisfied with any of the candidates. NOTA stands for None of the Above, and it's a crucial vote for individuals who aren't satisfied with any of the candidates. NOTA voting means that none of the candidates are suitable. NOTA votes are counted, but if the majority of the votes are NOTA, the party with the next largest majority will be elected.",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
