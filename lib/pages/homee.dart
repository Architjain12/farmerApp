import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:farmer/widget/categoryCard.dart';
import 'package:farmer/widget/changeTheme.dart';
import 'package:farmer/widget/productCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HopePage extends StatefulWidget {
  HopePage({Key? key}) : super(key: key);

  @override
  _HopePageState createState() => _HopePageState();
}

int _bottomNavIndex = 0;

class _HopePageState extends State<HopePage> {
  // List<Widget> fun = [];
  // void happy() async {
  //   for (int i = 0; i < 30; i++) {
  //     await Future.delayed(Duration(milliseconds: 10));
  //     fun.add(CategoryCard(
  //       categoryName: "Name",
  //       categoryTotal: i,
  //       imagePath: "https://source.unsplash.com/random",
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //happy();
    return Scaffold(
      body: SafeArea(
          child: Expanded(
            child: Column(
                  children: [
            Container(
              padding: EdgeInsets.all(2),
              child: Row(
                children: [
                  Text(
                    "What do you want to eat",
                    style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.headline2)
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  ChangeThemeButtonWidget(),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        bottom: 2, top: 5), //color: Colors.purple,
                    height: MediaQuery.of(context).size.height * 0.22,
                    child: Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i = 0; i < 30; i++)
                            CategoryCard(
                              categoryName: "Name",
                              categoryTotal: i,
                              imagePath: "https://source.unsplash.com/random/" +
                                  "${800 + i % 8 * 100}x${800 + i % 4 * 100}",
                            )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            color: Colors.red,
                          ),
                          padding: EdgeInsets.all(3),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Popular",
                                style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.headline2)),
                            Text("Let's choose and enjoy food",
                                style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyText1)),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  for (int i = 0; i < 30; i++)
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: ProductCard(
                        productName: "Name_+ ${i.toString()}",
                        productLocation: "Location",
                        productPrice: i.toString(),
                      ),
                    ),
                ],
              ),
            )
                  ],
                ),
          )),
      //bottomNavigationBar: BottomAppBar(color: Colors.blue, elevation: 25,),
      bottomNavigationBar: BottomNavigationBar(items: [])
  
      // AnimatedBottomNavigationBar(
      //   backgroundColor: Colors.green,
      //   icons: [
      //     Icons.home,
      //     Icons.settings,
      //     Icons.shop,
      //   ],
      //   activeIndex: _bottomNavIndex,
      //   leftCornerRadius: 32,
      //   rightCornerRadius: 32,
      //   gapLocation: GapLocation.none,
      //   onTap: (index) => setState(() => _bottomNavIndex = index),
      //   //other params
      // ),
    );
  }
}
