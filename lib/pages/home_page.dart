import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_food/pages/cart_page.dart';
import 'package:my_food/shared/theme.dart';
import 'package:my_food/widgets/category_selector.dart';
import 'package:my_food/widgets/food_list_item.dart';
import 'package:my_food/models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: defaultMargin),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon/line.png'))),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: defaultMargin, vertical: defaultMargin),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon/cart.png'))),
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                )),
            SizedBox(
              height: defaultMargin,
            ),
            CategorySelector(),
            SizedBox(
              height: defaultMargin,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                'Fast Food',
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Column(
              children: mockFoods
                  .map((e) => Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: FoodListItem(e),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
