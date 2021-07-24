import 'package:farmer/pages/modal_trigger.dart';
import 'package:farmer/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
                      height: 3 * screenHeight / 5,
                      child:ThemeProvider().isDarkMode? Lottie.asset("asset/hiDark.json"):Lottie.asset("asset/hiLight.json")  //Image.asset("asset/images/undraw_Meditation_re_gll0.png")
                      ),
                      //Theme(data: Theme.of(context).copyWith(canvasColor: Colors.transparent), child: ModalTrigger()),
                      //Container(alignment: Alignment.bottomCenter,child: Theme(data: Theme.of(context).copyWith(canvasColor: Colors.transparent), child: ModalTrigger())),
        ],
      ),
    bottomNavigationBar: Container(child: Theme(data: Theme.of(context).copyWith(canvasColor: Colors.transparent), child: ModalTrigger())),);
  }
}
