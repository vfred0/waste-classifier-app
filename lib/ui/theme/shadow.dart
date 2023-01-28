import 'package:flutter/painting.dart';

class Shadow {
  static const logo = BoxShadow(
    color: Color.fromARGB(40, 13, 11, 11),
    offset: Offset(0, 6),
    spreadRadius: 0,
    blurRadius: 12,
  );
  
  static const card = BoxShadow(
    color: Color.fromARGB(30, 13, 11, 11),
    offset: Offset(0, 2),
    spreadRadius: 0,
    blurRadius: 4,
  );
}
