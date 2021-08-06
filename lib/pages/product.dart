import 'package:farmer/widget/categoryCard.dart';
import 'package:farmer/widget/changeTheme.dart';
import 'package:farmer/widget/productCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        child: Row(
          children: [
            Text("What do you want to eat",
                style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.headline2)),
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
                          style: GoogleFonts.roboto(
                              textStyle:
                                  Theme.of(context).textTheme.headline2)),
                      Text("Let's choose and enjoy food",
                          style: GoogleFonts.roboto(
                              textStyle:
                                  Theme.of(context).textTheme.bodyText1)),
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
      );
  }
}