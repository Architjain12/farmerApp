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
      body: Column(
        children: [
          ListView(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ],
          ), Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ],
      ),
    );
  }
}
