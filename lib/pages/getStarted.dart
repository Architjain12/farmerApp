import 'package:farmer/pages/loginForm.dart';
import 'package:farmer/pages/modal_trigger.dart';
import 'package:farmer/widget/changeTheme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              SizedBox(
                  height: 2 * screenHeight / 5,
                  child: Lottie.asset("asset/hi.json") //Image.asset("asset/images/undraw_Meditation_re_gll0.png")
                  ),
              //SizedBox(height: screenHeight / 10),
              SizedBox(
                  height: 3 * screenHeight / 10,
                  child: Image(image: AssetImage("asset/bb.jpg"))),
              Theme(data: Theme.of(context).copyWith(canvasColor: Colors.transparent), child: ModalTrigger())
              
            ],
          )),
    );
  }
}
