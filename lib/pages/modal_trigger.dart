import 'package:farmer/pages/loginForm.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class ModalTrigger extends StatefulWidget {
  const ModalTrigger({Key? key}) : super(key: key);

  @override
  State<ModalTrigger> createState() => _ModalTriggerState();
}

class _ModalTriggerState extends State<ModalTrigger> {
  _loginPopUp(context, _height) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: LoginForm(),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          );
        });
  }

  bool changeButtton = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return AnimatedContainer(duration: Duration(seconds: 2),
    curve: Curves.bounceIn,
      child: InkWell(
          onTap: () async {
            //await Future.delayed(Duration(seconds: 2));
            setState(() {
              changeButtton=true;
            });
            
            await Future.delayed(Duration(seconds: 4));
             _loginPopUp(context, screenHeight);
          },
          child: changeButtton ? DoneButton() : GetStartedButton()),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      color: Colors.purple,//Theme.of(context).primaryColorLight,
      height: 100,
      width: 200,
      child: Text(
        "Get Started",
        maxLines: 1,
        style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 22),
      ),
    );
  }
}

class DoneButton extends StatelessWidget {
  const DoneButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(shape: BoxShape.circle),
        height: 200,
        width: 200,
        child: Lottie.asset("asset/tick.json", reverse: true));
  }
}
