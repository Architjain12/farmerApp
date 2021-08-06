import 'package:farmer/widget/changeTheme.dart';
import 'package:farmer/widget/productSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailPage extends StatefulWidget {
  int id;
  ProductDetailPage({Key? key, required this.id}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

int productQuantity = 0;

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined),
        title: Text("Product_Name"),
        actions: [
          ChangeThemeButtonWidget(),
          IconButton(
              onPressed: () {
                setState(() {
                  widget.id = widget.id + 1;
                });
              },
              icon: Stack(
                children: [
                  Icon(Icons.shopping_cart_outlined),
                  Container(
                      height: 12,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      alignment: Alignment.topCenter,
                      child: Text(
                        "${widget.id}",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ))
                ],
              ))
        ],
      ),
      body: ListView(
        children: [
          ProductSlider(items: [
            "https://source.unsplash.com/random/800x800",
            "https://source.unsplash.com/random/800x1000",
            "https://source.unsplash.com/random/1000x800",
            "https://source.unsplash.com/random/800x600"
          ]),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text("Yellow Ice Cream",style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headline1)),
                RatingBarIndicator(
                  rating: 2.6,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: RichText(
                text: TextSpan(
                    style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.bodyText1),
                    text:
                        "Ice cream is a sweetened frozen food typically eaten as a snack or dessert. It may be made from dairy milk or cream and is flavoured with a sweetener, either sugar or an alternative, and a spice, such as cocoa or vanilla, or with fruit such as strawberries or peaches. It can also be made by whisking a flavored cream base and liquid nitrogen together. Colorings are sometimes added, in addition to stabilizers. The mixture is cooled below the freezing point of water and stirred to incorporate air spaces and to prevent detectable ice crystals from forming. The result is a smooth, semi-solid foam that is solid at very low temperatures (below 2 °C or 35 °F). It becomes more malleable as its temperature increases.")),
          ),
          RatingBar.builder(
            initialRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              //print(rating);
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            IconButton(
                iconSize: 30,
                onPressed: () {
                  setState(() {
                    productQuantity -= 1;
                  });
                },
                icon: Icon(Icons.remove_circle_outline)),
            Text("$productQuantity",style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headline1)),
            IconButton(
                iconSize: 30,
                onPressed: () {
                  setState(() {
                    productQuantity += 1;
                  });
                },
                icon: Icon(Icons.add_circle_outline_outlined)),
            SizedBox(
              width: 30,
            ),
            Text("Add to Cart", style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headline1))
          ],
        ),
      ),
    );
  }
}
