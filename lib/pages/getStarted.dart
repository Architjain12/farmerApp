import 'package:farmer/pages/loginForm.dart';
import 'package:farmer/widget/changeTheme.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);
  _loginPopUp(context, _height) {
    showModalBottomSheet(
        context: context,
        //barrierColor: Colors.black.withAlpha(150),
        //elevation: 10,
        builder: (BuildContext context) {
          return Container(
            child: LoginForm(),
            height: 3*_height / 4,
            decoration: BoxDecoration(
              
              color: Colors.black12,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("FarmerApp"),
        backgroundColor: Colors.orange,
        actions: [ChangeThemeButtonWidget()],
      ),
      body: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              SizedBox(
                  height: 2 * screenHeight / 5,
                  child: Image.asset(
                      "asset/images/undraw_Meditation_re_gll0.png")),
              //SizedBox(height: screenHeight / 10),
              SizedBox(
                  height: 3 * screenHeight / 10,
                  child: Image(image: AssetImage("asset/bb.jpg"))),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ElevatedButton(
                      onPressed: () {
                        _loginPopUp(context, screenHeight);
                      },
                      child: Text("Get Started")),
                ),
              )
            ],
          )),
    );
  }
}
