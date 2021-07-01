import 'package:flutter/material.dart';
import 'package:my_food/shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: defaultMargin),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/icon/line.png'))
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: defaultMargin),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/icon/cart.png'))
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
          )
        ],
      ),
    );
  }
}
