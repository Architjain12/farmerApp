import 'dart:async';
import 'package:farmer/pages/getStarted.dart';
import 'package:farmer/pages/productDetail.dart';
import 'package:farmer/widget/changeTheme.dart';
import 'package:farmer/widget/productSlider.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
//import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var _bottomNavIndex = 0; //default index of a first screen
  bool sideBarSwitch = true;
  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  final iconList = <IconData>[
    Icons.home,
    Icons.phone,
    Icons.settings,
    Icons.card_travel,
  ];
  final data = [Text("home"), Text("1"), Text("data"), Text("ds")];
  final pages = [
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Column(
              children: [
                Text("Popular",
                    style: TextStyle(fontSize: 24.0, color: Colors.black)),
                Text(
                  "Let's choose and enjoy food",
                  style: TextStyle(fontSize: 14.0, color: Color(0xFF616161)),
                ),
              ],
            ),
            Icon(
              Icons.forward,
              color: Colors.black,
            ),
          ],
        ),SizedBox(height: 10,),
        Container(
          height: 150,
          width: 350,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "asset/aa.jpg",fit: BoxFit.fitWidth,),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rice",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("100Rs/per Kg", style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Agra, Up", style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),SizedBox(height: 10,),
        Container(
          height: 150,
          width: 350,padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "asset/aa.jpg",fit: BoxFit.fitWidth,),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rice",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("100Rs/per Kg", style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Agra, Up", style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),SizedBox(height: 10,),
        Container(
          height: 150,
          width: 350,padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "asset/aa.jpg",fit: BoxFit.fitWidth,),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rice",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("100Rs/per Kg", style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Agra, Up", style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),SizedBox(height: 10,),
        Container(
          height: 150,
          width: 350,padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "asset/aa.jpg",fit: BoxFit.fitWidth,),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rice",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("100Rs/per Kg", style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Agra, Up", style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),SizedBox(height: 10,),
        Container(
          height: 150,
          width: 350,padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "asset/aa.jpg",fit: BoxFit.fitWidth,),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rice",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("100Rs/per Kg", style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Agra, Up", style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),SizedBox(height: 10,),
      ],
    ),
    Text("data"),
    Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ProductSlider(items: ["asset/aa.jpg", "asset/bb.jpg"]),
        ProductSlider(items: ["asset/aa.jpg", "asset/bb.jpg"])
      ],
    ),
    Text("data")
  ];

  @override
  void initState() {
    super.initState();
    final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: HexColor('#373A36'),
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
      () => _animationController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      //drawer: Drawer(),
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
              ),
              sideBarSwitch
                  ? Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        //alignment: const Alignment(10, 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        //padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Drawer(),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    sideBarSwitch = false;
                                    //drawer();
                                  });
                                },
                                icon: Icon(Icons.list, color: Colors.black)),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            ProductDetailPage(id: 1)));
                              },
                              child: Text(
                                "Search",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.7)),
                              ),
                            ),
                            ChangeThemeButtonWidget(),
                          ],
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                      ),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.75,
                      color: Theme.of(context).primaryColor,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    sideBarSwitch = true;
                                    //drawer();
                                  });
                                },
                                icon: Icon(Icons.arrow_forward,
                                    color: Theme.of(context).primaryColorDark)),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("asset/aa.jpg"),
                            minRadius: 60,
                          ),
                          Text(
                            "Archit Jain",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          buildMenuItem(
                              text: "people",
                              icon: Icons.people,
                              context: context,
                              nextpage: ProductDetailPage(id: 2)),
                          buildMenuItem(
                              text: "people",
                              icon: Icons.policy,
                              context: context,
                              nextpage: ProductDetailPage(id: 20)),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: buildMenuItem(
                                text: "LogOut",
                                icon: Icons.logout,
                                context: context,
                                nextpage: GetStartedPage()),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
          pages[_bottomNavIndex],
        ],
      )), //data[_bottomNavIndex],
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          elevation: 8,
          backgroundColor:Colors.purple,// HexColor('#FFA400'),
          child: Icon(
            Icons.brightness_3,
            color: Colors.white,//HexColor('#373A36'),
          ),
          onPressed: () {
            _animationController.reset();
            _animationController.forward();
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.yellow : Colors.white;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: data[index],
              )
            ],
          );
        },
        backgroundColor: HexColor('#373A36'),
        activeIndex: _bottomNavIndex,
        splashColor: HexColor('#FFA400'),
        notchAndCornersAnimation: animation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}

class NavigationScreen extends StatefulWidget {
  final IconData iconData;

  NavigationScreen(this.iconData) : super();

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void didUpdateWidget(NavigationScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.iconData != widget.iconData) {
      _startAnimation();
    }
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
    super.initState();
  }

  _startAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: CircularRevealAnimation(
          animation: animation,
          centerOffset: Offset(80, 80),
          maxRadius: MediaQuery.of(context).size.longestSide * 1.1,
          child: Icon(
            widget.iconData,
            color: HexColor('#FFA400'),
            size: 160,
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

Widget buildMenuItem(
    {required String text,
    required IconData icon,
    required context,
    required nextpage}) {
  final color = Theme.of(context).primaryColorDark;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => nextpage));
    },
  );
}
