import 'package:farmer/widget/appBar.dart';
import 'package:farmer/widget/bottomBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Card(
        child: SizedBox.expand(
          child: SizedBox(
            height: 50,
          ),
        ),
      ),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  
}
