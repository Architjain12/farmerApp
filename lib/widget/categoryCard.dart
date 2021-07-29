import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  final String categoryName;
  final int categoryTotal;
  final String imagePath;
  const CategoryCard(
      {Key? key,
      required this.categoryName,
      required this.categoryTotal,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Theme.of(context).scaffoldBackgroundColor,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(

        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: ClipRRect(
            child: Image.network(
                imagePath, fit: BoxFit.fill,), //Container(color: Colors.green,),//Image.asset("asset/aa.jpg", ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
