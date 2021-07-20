import 'package:farmer/pages/productDetail.dart';
import 'package:farmer/widget/appBar.dart';
import 'package:farmer/widget/bottomBar.dart';
import 'package:farmer/widget/productSlider.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
import 'package:intro_slider/slide_object.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tc = TabController(length: 3, vsync: this);
    TabController tcc = TabController(length: 3, vsync: this);

    return Scaffold(
      drawer: Drawer(
        child: Material(
          color: Colors.blue,
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              buildMenuItem(text: "people", icon: Icons.people)
            ],
          ),
        ),
      ),
      appBar: myAppBar(),
      body: ListView(
        children: [
          InkWell(
            child: SizedBox(
                height: 300,
                child: ProductSlider(items: ["asset/aa.jpg", "asset/bb.jpg"])),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ProductDetailPage(id: 1)));
            },
          )
        ],
      ),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }
}

Widget buildMenuItem({required String text, required IconData icon}) {
  final color = Colors.red;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    onTap: () {},
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
