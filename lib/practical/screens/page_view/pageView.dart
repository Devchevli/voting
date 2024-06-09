import 'package:flutter/material.dart';
import 'package:voting/practical/screens/login_Screen/signIn.dart';
import 'package:voting/practical/screens/page_view/screen1.dart';
import 'package:voting/practical/screens/page_view/screen2.dart';
import 'package:voting/practical/screens/page_view/screen3.dart';


class PageViewExample extends StatefulWidget {
  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 3) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return _buildPage(index);
        },
      ),
      floatingActionButton: _currentPage < 3
          ? FloatingActionButton(backgroundColor: Colors.white,
        onPressed: _nextPage,
        child: Icon(Icons.arrow_forward),
      )
          : null,
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const Screen1();
      case 1:
        return const Screen2();
      case 2:
        return const Screen3();
      case 3:
        return const SignIn();
      default:
        return Container();
    }
  }
}
