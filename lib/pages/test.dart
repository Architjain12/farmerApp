import 'package:farmer/widget/productCard.dart';
import 'package:flutter/material.dart';

class Hp extends StatefulWidget {
  Hp({Key? key}) : super(key: key);

  @override
  _HpState createState() => _HpState();
}

class _HpState extends State<Hp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 400,
        ),
        buildImage(),
      ],
    ));
  }
}

Widget buildImage() => SliverToBoxAdapter(
      child: ListView(
        children: [
          for (int i = 0; i < 30; i++)
            ProductCard(
                productName: "Name_+ ${i.toString()}",
                productLocation: "Location",
                productPrice: i.toString())
        ],
      ),
    );
