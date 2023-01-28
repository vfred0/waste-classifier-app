import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:waste_classifier/types/categories_type.dart';
import 'package:waste_classifier/types/text_heading_type.dart';

import 'package:waste_classifier/ui/theme/stroke.dart';

import 'package:waste_classifier/ui/theme/color.dart';
import 'package:waste_classifier/ui/theme/heading.dart';
import 'package:waste_classifier/ui/theme/shadow.dart';



class Category extends StatefulWidget {
  final CategoriesType categoryType;
  const Category({required this.categoryType, super.key});

  @override
  _CategoryState createState() => _CategoryState(categoryType);
}

class _CategoryState extends State<Category> {
  var boxShadow = Shadow.card;
  var stroke = Stroke.card;
  var fontColor = Color.milkAndCookies[600]!;
  CategoriesType categoryType;
  _CategoryState(this.categoryType);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (stroke == Stroke.cardSelected) {
            stroke = Stroke.card;            
            fontColor = Color.milkAndCookies[600]!;            
          } else {            
            stroke = Stroke.cardSelected;
            fontColor = Color.bejeWeeled[400]!;
          }
        });
      },
      child: Container(
          decoration: BoxDecoration(
              color: Color.milkAndCookies[300],
              boxShadow: const [Shadow.card],
              border: stroke,
              borderRadius: BorderRadius.circular(12)),
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, left: 8, right: 8),
          child: Column(children: [
            Image.asset(
              'assets/images/categories/${categoryType.imageName}.png',
              width: 85,
            ),
            const Gap(8),
            Heading.getText(
                categoryType.categoryName, TextHeadingType.xsmall, fontColor,
                textAlign: TextAlign.center)
          ])),
    );
  }
}
