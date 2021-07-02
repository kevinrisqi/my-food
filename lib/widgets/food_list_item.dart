import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_food/models/food.dart';
import 'package:my_food/shared/theme.dart';

class FoodListItem extends StatelessWidget {
  final Food food;

  FoodListItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 2 * defaultMargin,
          height: 120,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          decoration: BoxDecoration(
              color: lightGreyColor, borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(food.picturePath),
                    )),
              ),
              SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    food.name,
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    food.description,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'IDR ' + food.price.toString(),
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 2 * defaultMargin - 70 - 18  * 2 - 150 ,
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        margin: EdgeInsets.only(right: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: mainColor,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon/add.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
