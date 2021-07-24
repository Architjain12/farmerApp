import 'package:farmer/pages/productDetail.dart';
import 'package:farmer/widget/productSlider.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Material(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left : 12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(),
                Text("Archit Jain",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                buildMenuItem(text: "people", icon: Icons.people,context: context, nextpage: ProductDetailPage(id: 2)),
                buildMenuItem(text: "people", icon: Icons.policy,context: context, nextpage: ProductDetailPage(id: 20)),
                BottomAppBar(
                  child:Row(children: [Icon(Icons.logout),SizedBox(width: 4,) ,Text("Log Out")],
                  )
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
            child: SizedBox(
                height: 300,
                child: ProductSlider(items: ["asset/aa.jpg", "asset/bb.jpg"])),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ProductDetailPage(id: 1)));
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      //params
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   bottomNavigationBar: AnimatedBottomNavigationBar(
      icons: [Icons.home, Icons.phone, Icons.settings
      ],
      activeIndex:1,// _bottomNavIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) => setState(() => index),
      //other params
   ),
      //bottomNavigationBar: myBottomNavigationBar(),
    );
  }
}

Widget buildMenuItem({required String text, required IconData icon, required context , required nextpage}) {
  final color = Colors.red;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    onTap: () {Navigator.push(context,
                  MaterialPageRoute(builder: (_) => nextpage));},
  );
}

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
      //isScrollable: false,
      //scrollPhysics: ScrollPhysics(),
      hideStatusBar: false,
      slides: [
        Slide(
          title: "Fuck ERASER",
          //description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
          pathImage: "asset/aa.jpg",
          backgroundColor: Color(0xfff5a623),
        ),
        Slide(
          title: "PENCIL",
          description:
              "Ye indulgence unreserved connection alteration appearance",
          //pathImage: "images/photo_pencil.png",
          backgroundColor: Color(0xff203152),
        ),
        Slide(
          title: "RULER",
          description:
              "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
          //pathImage: "images/photo_ruler.png",
          backgroundColor: Color(0xff9932CC),
        ),
      ],
    );
  }
}
