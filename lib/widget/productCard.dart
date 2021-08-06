import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatefulWidget {
  final String productName;
  final String productLocation;
  final String productPrice;
  ProductCard(
      {Key? key,
      required this.productName,
      required this.productLocation,
      required this.productPrice})
      : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(bottom: 10),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Container(
        //elevation: 5,
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 8, spreadRadius: 1, offset: Offset.fromDirection(1))],
          color: Colors.grey[100],
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset("asset/aa.jpg"),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.productName}",
                    style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.headline6),
                  ),
                  Container(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Icon(Icons.location_on),
                              Text("${widget.productLocation}",
                                  style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyText2)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text("${widget.productPrice}+ Rs",
                              style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyText1)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
