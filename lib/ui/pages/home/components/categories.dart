import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:waste_classifier/types/categories_type.dart';
import 'package:waste_classifier/types/text_heading_type.dart';
import 'package:waste_classifier/ui/color.dart';
import 'package:waste_classifier/ui/heading.dart';
import 'package:waste_classifier/ui/pages/home/components/category.dart';
import 'package:waste_classifier/ui/paragraph.dart';
import 'package:waste_classifier/types/text_paragraph_type.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            child: Heading.getText('Categorías', TextHeadingType.xlarge,
                Color.glimpseIntoSpace[500]!)),
        const Gap(12),
        SizedBox(
            width: double.infinity,
            child: Paragraph.getText(
                'Estas son las categorías con los que se ha entrenado el clasificador. ',
                TextParagraphType.xsmall,
                Color.milkAndCookies[600]!)),
        const Gap(24),
        Directionality(
          textDirection: TextDirection.ltr,
          child: Table(
            children: _getCategories(),
          ),
        ),
      ],
    );
  }

  List<TableRow> _getCategories() {
    List<TableRow> categories = [];

    for (int i = 0; i < CategoriesType.values.length; i++) {
      categories.add(TableRow(children: [
        Category(categoryType: CategoriesType.values[i]),                    
        Category(categoryType: CategoriesType.values[i + 1]),                
        Category(categoryType: CategoriesType.values[i + 2]),
      ]));
      i += 2;
    }

    return categories;
  }
}
