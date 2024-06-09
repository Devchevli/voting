import 'package:flutter/material.dart';

import '../../../view/utils/config/appImages.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            height: 450,
            child: Image.network(Appimages.screen3,fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text(
              overflow: TextOverflow.ellipsis,maxLines: 12,
              "India is one of the largest democracies in the world. The notion ‘Government of the people, by the people and for the people’ holds true only when the entire nation participates in the election process. In a true form of democracy, all the citizens come together to decide the future of the country and thereby their own. The right to vote gives the citizens of the country the power to exercise their franchise and decide collectively with the majority who they think is responsible enough to hold the highest office of the nation and carry on the responsibilities that come along with it.",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
