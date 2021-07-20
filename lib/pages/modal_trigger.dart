import 'package:farmer/pages/loginForm.dart';
import 'package:flutter/material.dart';

class ModalTrigger extends StatelessWidget {
  const ModalTrigger({Key? key}) : super(key: key);
  
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
              color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),),),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return ElevatedButton(
                      onPressed: () {
                        _loginPopUp(context, screenHeight);
                      },
                      child: Text("Get Started"));
  }
}