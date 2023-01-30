import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:waste_classifier/ui/theme/color.dart';

class BarItem extends StatefulWidget {
  final String nameIcon;
  const BarItem(this.nameIcon, {Key? key}) : super(key: key);

  @override
  _BarItemState createState() => _BarItemState(nameIcon);
}

class _BarItemState extends State<BarItem> {
  final String nameIcon;
  bool _isItemSelected = false;
  _BarItemState(this.nameIcon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isItemSelected = !_isItemSelected;
        });
      },
      child: SizedBox(
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/icons/$nameIcon.svg',
              color: Color.glimpseIntoSpace[500],
            ),
            _showDotIf(_isItemSelected),
          ],
        ),
      ),
    );
    // return Container();
  }

  Widget _showDotIf(bool itemSelected) {
    if (itemSelected) {
      return Column(children: [
        const Gap(8),
        SvgPicture.asset(
          'assets/icons/dot.svg',
          color: Color.glimpseIntoSpace[500],
        )
      ]);
    }
    return Container();
  }
}
