import 'package:flutter/painting.dart';
import 'package:waste_classifier/ui/color.dart' as color;

class Stroke {
  static final card = Border.all(
    color: const Color.fromARGB(5, 13, 11, 11),
    width: 2.6,    
  );

  static Border cardSelected = Border.all(
    color: color.Color.bejeWeeled[400]!,
    width: 2.6,    
  );
}
