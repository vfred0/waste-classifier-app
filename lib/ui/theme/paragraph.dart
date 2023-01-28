import 'package:flutter/material.dart';
import 'package:waste_classifier/types/text_paragraph_type.dart';

class Paragraph {
  static getText(
      String text, TextParagraphType textParagraphType, Color color) {
    return Text(text,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: textParagraphType.size,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontFamily: 'Manrope',
          color: color,
          // height: textParagraphType.height,
        ));
  }
}
