import 'package:flutter/material.dart';
import 'package:voting/practical/screens/page_view/screen1.dart';

import '../../../view/utils/config/appImages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    Future.delayed(Duration(seconds: 3)).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen1(),),);
    });

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(Appimages.logo),
            ),
          ),
        ),
      ),
    );
  }
}
