import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:waste_classifier/types/text_heading_type.dart';
import 'package:waste_classifier/ui/theme/stroke.dart';
import 'package:waste_classifier/ui/theme/color.dart';
import 'package:waste_classifier/ui/theme/heading.dart';
import 'package:waste_classifier/ui/theme/shadow.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color.milkAndCookies[300],
        border: Stroke.card,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(120),
          bottomLeft: Radius.circular(120),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: const [
          Shadow.logo
        ],
      ),
      child: Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/logo.svg',
              color: Color.bejeWeeled[400],
            ),
            const Gap(12),
            Heading.getText(
                'SCD', TextHeadingType.xxlarge, Color.glimpseIntoSpace[500]!)
          ]),
    );
  }
}
