import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:waste_classifier/ui/theme/color.dart';
import 'package:waste_classifier/ui/pages/home/widgets/categories.dart';
import 'package:waste_classifier/ui/pages/home/widgets/logo.dart';
import 'package:waste_classifier/ui/theme/paragraph.dart';
import 'package:waste_classifier/types/text_paragraph_type.dart';
import 'package:waste_classifier/ui/widgets/nav_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.milkAndCookies[300],
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(22),
            const Logo(),
            const Gap(38),
            Container(              
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              child: Column(
                children: <Widget>[
                  SizedBox(
                      width: double.infinity,
                      child: Paragraph.getText(
                          'Sistema clasificador de desechos (SCD) que puede identificar hasta 12 categorías de desechos.',
                          TextParagraphType.small,
                          Color.milkAndCookies[600]!)),
                  const Gap(24),
                  const Categories()
                ],
              ),
            ),
            const NavBar()
          ],
        ),
      ),
    );
  }
}
