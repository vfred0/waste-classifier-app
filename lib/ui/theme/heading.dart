import 'package:flutter/material.dart';
import 'package:waste_classifier/types/text_heading_type.dart';


class Heading {
  static getText(String text, TextHeadingType textHeadingType, Color color, {TextAlign textAlign = TextAlign.left}) {
    return Text(text,
        textDirection: TextDirection.ltr,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: textHeadingType.size,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontFamily: 'Montserrat',
          color: color,
        ));
  }
}
