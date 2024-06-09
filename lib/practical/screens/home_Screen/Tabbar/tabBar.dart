import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/material.dart';
import 'package:voting/practical/screens/home_Screen/Tabbar/detailsScreen.dart';
import 'package:voting/practical/screens/home_Screen/Tabbar/profileScreen.dart';
import 'package:voting/practical/screens/home_Screen/Tabbar/votingScreen.dart';
import '../../../../model/modelData.dart'; // Import the model data class

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({super.key});

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  List<ModelData> dataList = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    try {
      String jsonString =
      await rootBundle.rootBundle.loadString("jsonData/data.json");
      List<dynamic> jsonList = json.decode(jsonString);
      setState(() {
        dataList = jsonList.map((json) => ModelData.fromJson(json)).toList();
      });
    } catch (e) {
      log("Error loading json data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.white30,
          actions: const [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
            )
          ],
          bottom: const TabBar(
            padding: EdgeInsets.only(top: 5),
            labelStyle: TextStyle(fontSize: 23,),
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: "Details",
              ),
              Tab(
                text: "Voting",
              ),
              Tab(
                text: "Profile",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const BouncingScrollPhysics(),
          children: [
            Detail_Screen(),
            VotingScreen(items: dataList), // Pass data list to VotingScreen
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}
