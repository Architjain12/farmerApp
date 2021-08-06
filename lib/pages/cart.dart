import 'package:farmer/pages/home.dart';
import 'package:farmer/widget/productCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                HomePage();
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Your cart is ready to go",
              style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.headline1)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Send To"),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_forward))
                      ],
                    ),
                    Text("Address")
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Your order"),
                IconButton(onPressed: () {}, icon: Icon(Icons.add))
              ],
            ),
            Expanded(
              child: ListView(
                children: [
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
        bottomNavigationBar: Container(
          color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.18,
          child: Column(
            children: [
              Container(padding: EdgeInsets.only(left:18, right: 18),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Cost"),
                    Column(
                      children: [Text("Delivery fee \$4"), Text("\$36,00")],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Container(padding:EdgeInsets.all(8) ,
                  child: Text("Continue to pay \$3600"),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(
                          MediaQuery.of(context).size.height * 0.1))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
