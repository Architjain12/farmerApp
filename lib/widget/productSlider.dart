import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 20,
        height: 5,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 5,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class ProductSlider extends StatefulWidget {
  final List<String> items;
  var index = 0;

  ProductSlider({required this.items});

  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  int activeIndex = 0;
  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        // overflow: Overflow.visible,
        children: <Widget>[
          Container(
            //height: 300,
            //width: MediaQuery.of(context).size.width,
            //child: Column(children: [],)
            child: CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setActiveDot(index);
                },
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                autoPlayAnimationDuration: Duration(seconds: 2),
                viewportFraction: 1.0,
              ),
              items: widget.items.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(item), fit: BoxFit.fill)),
                      //width: MediaQuery.of(context).size.width,
                      height: 300,
                      //child: Row(children: [Text("Fuck oFF")],),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.items.length, (idx) {
                return activeIndex == idx ? ActiveDot() : InactiveDot();
              }))
        ],
      ),
    );
  }
}
