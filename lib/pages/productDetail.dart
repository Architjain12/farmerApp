import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final int id;
  ProductDetailPage({Key? key, required this.id}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("data ${widget.id} fun"),
      ),
    );
  }
}
