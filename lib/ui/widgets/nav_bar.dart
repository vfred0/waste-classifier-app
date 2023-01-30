import 'package:flutter/cupertino.dart';
import 'package:waste_classifier/ui/theme/color.dart';
import 'package:waste_classifier/ui/theme/shadow.dart';
import 'package:waste_classifier/ui/widgets/bar_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 244,
      // width: double.infinity,
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 34,
        right: 34,
      ),
      decoration: BoxDecoration(
        color: Color.milkAndCookies[300],
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        boxShadow: const [Shadow.navbar],
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              BarItem('home'),
              BarItem('scan'),
              BarItem('details'),
            ]),
      ),
    );
  }
}
